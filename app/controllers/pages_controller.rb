class PagesController < ApplicationController

  # This action is usually accessed with the root path, normally '/'
  def home
    @blog_posts = BlogPost.live.paginate({
        :page => 1,
        :per_page => 3
      })

    @calendar_items = Event.where(['end_at >= ? OR start_at >= ?', Time.now, Time.now])

    @page_blog = Page.find('blog')
    @page_calendar = Page.find('calendar')

    error_404 unless (@page = Page.where(:link_url => '/').first).present?
  end

  def show
    @page = Page.find("#{params[:path]}/#{params[:id]}".split('/').last)

    if @page.try(:live?) || (refinery_user? && current_user.authorized_plugins.include?("refinery_pages"))
      # if the admin wants this to be a "placeholder" page which goes to its first child, go to that instead.
      if @page.skip_to_first_child && (first_live_child = @page.children.order('lft ASC').live.first).present?
        redirect_to first_live_child.url
      elsif @page.link_url.present?
        redirect_to @page.link_url and return
      end
    else
      error_404
    end
  end


end
