require File.expand_path('../boot', __FILE__)

require 'rails/all'

# If you have a Gemfile, require the gems listed there, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(:default, Rails.env) if defined?(Bundler)

module Progressbar
  class Application < Rails::Application
    
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
    #mail.session.mail.pop3.host=mail.digmia.com
    #mail.session.mail.pop3.password=
    #mail.session.mail.pop3.port=110
    #mail.session.mail.pop3.user=
    #mail.session.mail.smtp.auth=false
    #mail.session.mail.smtp.host=mail.digmia.com
    #mail.session.mail.smtp.password=
    #mail.session.mail.smtp.port=25
    #mail.session.mail.smtp.user=
    #mail.session.mail.store.protocol=pop3
    #mail.session.mail.transport.protocol=smtp
    #

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
    config.filter_parameters += [:password]
  end
end
