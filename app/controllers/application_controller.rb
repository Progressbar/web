class ApplicationController < ActionController::Base
  protect_from_forgery
  
  before_filter :default_pages, :mailing_list
  
  layout proc{ |c| c.request.xhr? ? false : "application" }

  private
  
  def default_pages
    ids = Progressbar::Application::PAGES
    
    @home_page = Page.find_by_id(ids[:HOME_PAGE_ID])
    @colophon_page = Page.find_by_id(ids[:COLOPHON_PAGE_ID])
    @blog_page = Page.find_by_id(ids[:BLOG_PAGE_ID])
    @wiki_page = Page.find_by_id(ids[:WIKI_PAGE_ID])
    @contact_page = Page.find_by_id(ids[:CONTACT_PAGE_ID])
    @events_page = Page.find_by_id(ids[:EVENTS_PAGE_ID])
    @join_us_page = Page.find_by_id(ids[:JOIN_US_PAGE_ID])
    @projects_page = Page.find_by_id(ids[:PROJECTS_PAGE_ID])
    @sponsors_page = Page.find_by_id(ids[:SPONSORS_PAGE_ID])
    @videoarchive_page = Page.find_by_id(ids[:VIDEOARCHIVE_PAGE_ID])

  end  
  
  def mailing_list
    p = params[:mailing_list] ? params[:mailing_list] : {}
    p[:events] = true unless params[:mailing_list]
    @mailing_list = MailingList.new(p)    
  end
end
