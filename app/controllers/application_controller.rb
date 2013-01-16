class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :default_pages, :init_features

  layout proc{ |c| c.request.xhr? ? false : 'application' }

  private

  def default_pages
    ids = Progressbar::Application::PAGES

    @home_page = ::Refinery::Page.find_by_id(ids[:HOME_PAGE_ID])
    @colophon_page = ::Refinery::Page.find_by_id(ids[:COLOPHON_PAGE_ID])
    @contact_page = ::Refinery::Page.find_by_id(ids[:CONTACT_PAGE_ID])
    @join_us_page = ::Refinery::Page.find_by_id(ids[:JOIN_US_PAGE_ID])
    @records_page = ::Refinery::Page.find_by_path('/records')
    @owasp_page = ::Refinery::Page.find_by_title('owasp')
    @hardware_page = ::Refinery::Page.find_by_id(ids[:HARDWARE_PAGE_ID])
    @bitcoin_page = ::Refinery::Page.find_by_id(ids[:BITCOIN_PAGE_ID])
  end

  def init_features
    @door_status = ::Refinery::DoorStatuses::DoorStatus.last
    @today_event = ::Refinery::Calendar::Event.live.today.order('featured DESC').first
    @upcoming_event = ::Refinery::Calendar::Event.live.upcoming.first

    @registration = ::Refinery::Registrations::Registration.new

    subscriber = params[:subscriber] ? params[:subscriber] : {}
    subscriber[:events] = true unless params[:subscriber]
    @subscriber = ::Refinery::Mailinglists::Subscriber.new(subscriber)
  end

  # for canonical url
  def canonical?
    ::Refinery::I18n.default_frontend_locale != ::Refinery::I18n.current_frontend_locale
  end
end