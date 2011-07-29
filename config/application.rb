require File.expand_path('../boot', __FILE__)

require 'rails/all'

# If you have a Gemfile, require the gems listed there, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(:default, Rails.env) if defined?(Bundler)


module Progressbar
  class Application < Rails::Application
    
    NOTIFICATION_CONTACT_EMAIL = 'keraml@gmail.com'
  
    PAGES = {
      :HOME_PAGE_ID => 1,
      :NOT_FOUND_PAGE_ID => 2,
      :ABOUT_US_PAGE_ID => 3,
      :BLOG_PAGE_ID => 4,
      :CONTACT_PAGE_ID => 5,
      :THANK_YOU_CONTACT_PAGE_ID => 6,
      :PRIVACY_CONTACT_PAGE_ID => 7,
      :EVENTS_PAGE_ID => 8,
      :WIKI_PAGE_ID => 9,
      :COLOPHON_PAGE_ID => 10,
      :JOIN_US_PAGE_ID => 11,
      :PROJECTS_PAGE_ID => 12,
      :SPONSORS_PAGE_ID => 16,
    }
    
    config.action_mailer.raise_delivery_errors = false
    config.action_mailer.delivery_method = :smtp
    config.action_mailer.perform_deliveries = true
    config.action_mailer.default_url_options = { :host => 'localhost' }

    config.action_mailer.smtp_settings = {
      :enable_starttls_auto => true,
      :address        => 'mail.digmia.com',
      :port           => '25',
      :user_name      => '',
      :password       => ''
    }

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # Custom directories with classes and modules you want to be autoloadable.
    # config.autoload_paths += %W(#{config.root}/extras)

    # Only load the plugins named here, in the order given (default is alphabetical).
    # :all can be used as a placeholder for all plugins not explicitly named.
    # config.plugins = [ :exception_notification, :ssl_requirement, :all ]

    # Activate observers that should always be running.
    # config.active_record.observers = :cacher, :garbage_collector, :forum_observer

    # Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
    # Run "rake -D time" for a list of tasks for finding time zone names. Default is UTC.
    # config.time_zone = 'Central Time (US & Canada)'

    # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
    # config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
    # config.i18n.default_locale = :de

    # JavaScript files you want as :defaults (application.js is always included).
    config.action_view.javascript_expansions[:defaults] = %w()

    # Configure the default encoding used in templates for Ruby 1.9.
    config.encoding = "utf-8"

    # Configure sensitive parameters which will be filtered from the log file.
    config.filter_parameters += [:password]
    
    config.to_prepare do
      Refinery.searchable_models = [Page, BlogPost, Event]
    end
  end
end
