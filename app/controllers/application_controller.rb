class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :default_pages, :mailing_list, :header_features

  layout proc{ |c| c.request.xhr? ? false : "application" }

  private

  def default_pages
    ids = Progressbar::Application::PAGES

    @home_page = ::Refinery::Page.find_by_id(ids[:HOME_PAGE_ID])
    @colophon_page = ::Refinery::Page.find_by_id(ids[:COLOPHON_PAGE_ID])
    @blog_page = ::Refinery::Page.find_by_id(ids[:BLOG_PAGE_ID])
    @wiki_page = ::Refinery::Page.find_by_id(ids[:WIKI_PAGE_ID])
    @contact_page = ::Refinery::Page.find_by_id(ids[:CONTACT_PAGE_ID])
    @events_page = ::Refinery::Page.find_by_id(ids[:EVENTS_PAGE_ID])
    @join_us_page = ::Refinery::Page.find_by_id(ids[:JOIN_US_PAGE_ID])
    @projects_page = ::Refinery::Page.find_by_id(ids[:PROJECTS_PAGE_ID])
    @sponsors_page = ::Refinery::Page.find_by_id(ids[:SPONSORS_PAGE_ID])
    @records_page = ::Refinery::Page.find_by_path('/records')

    @registration = ::Refinery::Registrations::Registration.new
    # superuser
#    sign_in(::Refinery::User.where(:email => 'info@progressbar.sk').first) if Rails.env.development?
#    sign_in(::Refinery::User.find(3)) if Rails.env.development? #active member
#    sign_in(::Refinery::User.find(268)) if Rails.env.development? #member
  end

  def mailing_list
    p = params[:mailinglist] ? params[:mailinglist] : {}
    p[:events] = true unless params[:mailinglist]
    @mailinglist = ::Refinery::Mailinglists::Mailinglist.new

  end

  def header_features
    @door_status = ::Refinery::DoorStatuses::DoorStatus.last
    @today_event = #::Refinery::Calendar::Event.live.today.order('featured DESC').first
    @upcoming_event = ::Refinery::Calendar::Event.live.upcoming.first
  end

  # for canonical url
  def canonical?
    ::Refinery.i18n_enabled? && ::Refinery::I18n.default_frontend_locale != ::Refinery::I18n.current_frontend_locale
  end
end
