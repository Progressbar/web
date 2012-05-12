require 'net/http'
require 'open-uri'

module Refinery
  class PagesController < ::ApplicationController

    include ActionView::Helpers::NumberHelper

    before_filter :find_page, :except => [:preview]

    # Save whole Page after delivery
    after_filter { |c| c.write_cache? }

    # This action is usually accessed with the root path, normally '/'
    def home
      @blog_posts = Blog::Post.live.paginate({
          :page => 1,
          :per_page => 3
        })

      #      event = Event.where('start_at >= ?', Time.now).order('featured ASC').limit(1)
      #      @event = event.empty? ? Event.last : event.first

      render_with_templates?
    end

    # This action can be accessed normally, or as nested pages.
    # Assuming a page named "mission" that is a child of "about",
    # you can access the pages with the following URLs:
    #
    #   GET /pages/about
    #   GET /about
    #
    #   GET /pages/mission
    #   GET /about/mission
    #
    def show
      get_records

      if current_user_can_view_page?
        if should_skip_to_first_child?
          redirect_to refinery.url_for(first_live_child.url)
        elsif page.link_url.present?
          redirect_to page.link_url
        else
          if requested_friendly_id != page.friendly_id
            redirect_to refinery.url_for(page.url), :status => 301
          else

            render_with_templates?
          end
        end
      else
        error_404
      end
    end

    def preview
      if page(fallback_to_404 = false)
        # Preview existing pages
        @page.attributes = params[:page]
      elsif params[:page]
        # Preview a non-persisted page
        @page = Page.new(params[:page])
      end

      render_with_templates?(:action => :show)
    end

    protected

    def get_records
      # @records = get_records_from_mirror
      @records = get_records_from_disk
    end

    def get_records_from_disk
      records = Hash.new
      files_dir = 'public/data/records'
      files = Dir.new(Rails.root.join(files_dir)).entries.reject {|f| ['.', '..'].include? f}
      repository_url = "#{[request.protocol, request.host_with_port].join}/data/records"

      files.each do |f|
        k = File.basename(f, '.*')
        m = f.match(/pgb_?(\d+)_([\w_-]+)\.(\w+)$/)

        if m
          fpath = Rails.root.join("#{files_dir}/#{f}")
          fsize = number_to_human_size(File.stat(fpath).size)

          if records[k]
            records[k][:format][m[3]] = fsize
          else
            records[k] = {
              :title => m[2].gsub(/(_|-)/, ' ').capitalize,
              :repository => [repository_url],
              :date => Date.parse(m[1]),
              :format => {m[3] => fsize}
            }
          end
        end
      end

      records
    end

    def get_records_from_mirror
      records = Hash.new
      repository_url = 'http://localhost:3000/video_2.html'

      begin
        uri = URI.parse(repository_url)
        http = Net::HTTP.new(uri.host, uri.port)
        http.read_timeout = 2
        response = http.request(Net::HTTP::Get.new(uri.request_uri))

        doc = Nokogiri::HTML(response)
        rows = doc.xpath('//table/tbody/tr')
        files = rows.collect do |row|
          file = {}
          [
            [:url, 'td[2]/a/@href'],
            [:size, 'td[4]/text()']
          ].each do |name, xpath|
            file[name] = row.at_xpath(xpath).to_s.strip
          end
          file if file[:url].match(/\.\w+$/)
        end
        files.compact!

        files.each do |f|
          m = f[:url].match(/pgb_?(\d+)_([\w_-]+)\.(\w+)$/)
          k = f[:url].match(/\/([^\/]+)\.\w+$/)

          if records[k[1]]
            records[k[1]][:format][m[3]] = f[:size]
          else
            records[k[1]] = {
              :title => m[2].gsub(/(_|-)/, ' ').capitalize,
              :repository => [repository_url],
              :date => Date.parse(m[1]),
              :format => {m[3] => f[:size]}
            }
          end
        end
      rescue
        puts "Problems parse repository - #{$!}"
      end

      records
    end

    def requested_friendly_id
      "#{params[:path]}/#{params[:id]}".split('/').last
    end

    def should_skip_to_first_child?
      page.skip_to_first_child && first_live_child
    end

    def current_user_can_view_page?
      page.live? || current_refinery_user_can_access?("refinery_pages")
    end

    def current_refinery_user_can_access?(plugin)
      refinery_user? && current_refinery_user.authorized_plugins.include?(plugin)
    end

    def first_live_child
      page.children.order('lft ASC').live.first
    end

    def find_page(fallback_to_404 = true)
      @page ||= case action_name
      when "home"
        Refinery::Page.where(:link_url => '/').first
      when "show", "preview"
        Refinery::Page.find_by_path_or_id(params[:path], params[:id])
      end
      @page || (error_404 if fallback_to_404)
    end

    alias_method :page, :find_page

    def render_with_templates?(render_options = {})
      if Refinery::Pages.use_layout_templates && page.layout_template.present?
        render_options[:layout] = page.layout_template
      end
      if Refinery::Pages.use_view_templates && page.view_template.present?
        render_options[:action] = page.view_template
      end
      render render_options if render_options.any?
    end

    def write_cache?
      if Refinery::Pages.cache_pages_full
        cache_page(response.body, File.join('', 'refinery', 'cache', 'pages', request.path.sub("//", "/")).to_s)
      end
    end
  end
end
