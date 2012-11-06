require 'net/http'
require 'open-uri'

module ApplicationHelper

  def is_lang?(lang)
  params[:locale].to_s === lang
  end

  def get_records
    # @records = get_records_from_mirror
    get_records_from_disk
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
end
