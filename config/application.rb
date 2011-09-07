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

    # redirect old stuff
    require 'rack/rewrite'

    config.middleware.insert_before(Rack::Lock, Rack::Rewrite) do
      r301 '/sk', '/'
      r301 '/sponsors', '/oficiality/sponzori'
      r301 '/sk/sponsors', '/oficiality/sponzori'
      r301 '/en/sponsors', '/en/legal-stuff/sponsors'
      r301 '/statut', '/en/legal-stuff/statutes'
      r301 '/sk/statut', '/en/oficiality/stanovy'
      r301 '/join-us', '/pridaj-sa'
      r301 '/location', '/contact'
      r301 '/sk/location', '/contact'
      r301 '/en/location', '/en/contact'
      r301 '/blog/-/blogs', '/blog'
      r301 '/en/blog/-/blogs', '/en/blog'
      r301 '/sk/blog/-/blogs', '/blog'

      r301 '/blog/-/blogs/vysledky-na-poli-svetovej-dominancie-v-real-time-generovanych-animaciach-za-poslednu-patrocnicu', '/blog/vysledky-na-poli-svetovej-dominancie-v-real-time-generovanych-animaciach-za-poslednu-patrocnicu'
      r301 '/blog/-/blogs/progressbar-opening-party', '/blog/progressbar-opening-party'
      r301 '/blog/-/blogs/moderne-sposoby-anonymizacie-prednaska-a-diskusia-o-bitcoin', '/blog/moderne-sposoby-anonymizacie-prednaska-a-diskusia-o-bitcoin'
      r301 '/blog/-/blogs/obhliadka-priestorov-na-tovarenskej-ulici-c-14', '/blog/obhliadka-priestorov-na-tovarenskej-ulici-c-14'
      r301 '/blog/-/blogs/owasp-potrebuje-tvoju-pomoc', '/blog/owasp-potrebuje-tvoju-pomoc'
      r301 '/blog/-/blogs/bratislava-shackinuniversity', '/blog/bratislavashackinuniversity'
      r301 '/blog/-/blogs/habitat-live-zvukove-vysielanie-progressbar-online', '/blog/habitat-live-zvukove-vysielanie-progressbar-online'
      r301 '/blog/-/blogs/startuju-owasp-webappsec-stretnutia-kryptograficke-kluce-ich-distribucia-a-doveryhodnost', '/blog/startuju-owasp-webappsec-stretnutia-kryptograficke-kluce-ich-distribucia-a-doveryhodnost'
      r301 '/blog/-/blogs/martin-rublik-kryptograficke-kluce-ich-distribucia-a-doveryhodnost', '/blog/martin-rublik-kryptograficke-kluce-ich-distribucia-a-doveryhodnost'
      r301 '/blog/-/blogs/jozef-skulavik-network-security', '/blog/jozef-skulavik-network-security'
      r301 '/blog/-/blogs/tik-art-radio-days-6th-till-11th-of-september-2011', '/blog/tik-art-radio-days-6th-till-11th-of-september-2011'
      r301 '/blog/-/blogs/kryptoanarchia-po-19-tich-rokoch-od-vydania-kryptoanarchistickeho-manifesta', '/blog/kryptoanarchia-po-19-tich-rokoch-od-vydania-kryptoanarchistickeho-manifesta'
      r301 '/blog/-/blogs/voltage-control-analogovy-audiovizualny-syntetizator-workshop', '/blog/voltage-control-analogovy-audiovizualny-syntetizator-workshop'
      r301 '/blog/-/blogs/paranoja-liferay-a-lt', '/blog/paranoja-liferay-a-lt'
      r301 '/blog/-/blogs/another-presentation-for-progressbar-opening-party-close-look-dive-into-mobile-phone-hardware', '/blog/another-presentation-for-progressbar-opening-party-close-look-dive-into-mobile-phone-hardware'
      r301 '/blog/-/blogs/ako-bolo-vcera-na-prednaske-mitcha-altmana', '/blog/ako-bolo-vcera-na-prednaske-mitcha-altmana'
      r301 '/blog/-/blogs/the-inanna-project-an-experiment-in-art-technology-and-the-transformative-power-of-free-hardware-and-software', '/blog/the-inanna-project-an-experiment-in-art-technology-and-the-transformative-power-of-free-hardware-and-software'
      r301 '/blog/-/blogs/postrehy-z-luxemburgska-fotoblog', '/blog/postrehy-z-luxemburgska-fotoblog'
      r301 '/blog/-/blogs/worklab-presentation-of-tik-time-inventors-kabinet', '/blog/worklab-presentation-of-tik-time-inventors-kabinet'
      r301 '/blog/-/blogs/metamorfozy-2010-globalna-klimaticka-zmena', '/blog/metamorfozy-2010-globalna-klimaticka-zmena'
      r301 '/blog/-/blogs/bypassing-web-application-firewalls-wafs', '/blog/bypassing-web-application-firewalls-wafs'
      r301 '/blog/-/blogs/uvod-do-organizacie-casu-metodou-gtd', '/blog/uvod-do-organizacie-casu-metodou-gtd'
      r301 '/blog/-/blogs/rubyslava-stretnutie-fanusikov-ruby', '/blog/rubyslava-stretnutie-fanusikov-ruby'

      r301 '/en/blog/-/blogs/vysledky-na-poli-svetovej-dominancie-v-real-time-generovanych-animaciach-za-poslednu-patrocnicu', '/en/blog/vysledky-na-poli-svetovej-dominancie-v-real-time-generovanych-animaciach-za-poslednu-patrocnicu'
      r301 '/en/blog/-/blogs/progressbar-opening-party', '/en/blog/progressbar-opening-party'
      r301 '/en/blog/-/blogs/moderne-sposoby-anonymizacie-prednaska-a-diskusia-o-bitcoin', '/en/blog/moderne-sposoby-anonymizacie-prednaska-a-diskusia-o-bitcoin'
      r301 '/en/blog/-/blogs/obhliadka-priestorov-na-tovarenskej-ulici-c-14', '/en/blog/obhliadka-priestorov-na-tovarenskej-ulici-c-14'
      r301 '/en/blog/-/blogs/owasp-potrebuje-tvoju-pomoc', '/en/blog/owasp-potrebuje-tvoju-pomoc'
      r301 '/en/blog/-/blogs/bratislava-shackinuniversity', '/en/blog/bratislavashackinuniversity'
      r301 '/en/blog/-/blogs/habitat-live-zvukove-vysielanie-progressbar-online', '/en/blog/habitat-live-zvukove-vysielanie-progressbar-online'
      r301 '/en/blog/-/blogs/startuju-owasp-webappsec-stretnutia-kryptograficke-kluce-ich-distribucia-a-doveryhodnost', '/en/blog/startuju-owasp-webappsec-stretnutia-kryptograficke-kluce-ich-distribucia-a-doveryhodnost'
      r301 '/en/blog/-/blogs/martin-rublik-kryptograficke-kluce-ich-distribucia-a-doveryhodnost', '/en/blog/martin-rublik-kryptograficke-kluce-ich-distribucia-a-doveryhodnost'
      r301 '/en/blog/-/blogs/jozef-skulavik-network-security', '/en/blog/jozef-skulavik-network-security'
      r301 '/en/blog/-/blogs/tik-art-radio-days-6th-till-11th-of-september-2011', '/en/blog/tik-art-radio-days-6th-till-11th-of-september-2011'
      r301 '/en/blog/-/blogs/kryptoanarchia-po-19-tich-rokoch-od-vydania-kryptoanarchistickeho-manifesta', '/en/blog/kryptoanarchia-po-19-tich-rokoch-od-vydania-kryptoanarchistickeho-manifesta'
      r301 '/en/blog/-/blogs/voltage-control-analogovy-audiovizualny-syntetizator-workshop', '/en/blog/voltage-control-analogovy-audiovizualny-syntetizator-workshop'
      r301 '/en/blog/-/blogs/paranoja-liferay-a-lt', '/en/blog/paranoja-liferay-a-lt'
      r301 '/en/blog/-/blogs/another-presentation-for-progressbar-opening-party-close-look-dive-into-mobile-phone-hardware', '/en/blog/another-presentation-for-progressbar-opening-party-close-look-dive-into-mobile-phone-hardware'
      r301 '/en/blog/-/blogs/ako-bolo-vcera-na-prednaske-mitcha-altmana', '/en/blog/ako-bolo-vcera-na-prednaske-mitcha-altmana'
      r301 '/en/blog/-/blogs/the-inanna-project-an-experiment-in-art-technology-and-the-transformative-power-of-free-hardware-and-software', '/en/blog/the-inanna-project-an-experiment-in-art-technology-and-the-transformative-power-of-free-hardware-and-software'
      r301 '/en/blog/-/blogs/postrehy-z-luxemburgska-fotoblog', '/en/blog/postrehy-z-luxemburgska-fotoblog'
      r301 '/en/blog/-/blogs/worklab-presentation-of-tik-time-inventors-kabinet', '/en/blog/worklab-presentation-of-tik-time-inventors-kabinet'
      r301 '/en/blog/-/blogs/metamorfozy-2010-globalna-klimaticka-zmena', '/en/blog/metamorfozy-2010-globalna-klimaticka-zmena'
      r301 '/en/blog/-/blogs/bypassing-web-application-firewalls-wafs', '/en/blog/bypassing-web-application-firewalls-wafs'
      r301 '/en/blog/-/blogs/uvod-do-organizacie-casu-metodou-gtd', '/en/blog/uvod-do-organizacie-casu-metodou-gtd'
      r301 '/en/blog/-/blogs/rubyslava-stretnutie-fanusikov-ruby', '/en/blog/rubyslava-stretnutie-fanusikov-ruby'

      r301 '/sk/blog/-/blogs/vysledky-na-poli-svetovej-dominancie-v-real-time-generovanych-animaciach-za-poslednu-patrocnicu', '/blog/vysledky-na-poli-svetovej-dominancie-v-real-time-generovanych-animaciach-za-poslednu-patrocnicu'
      r301 '/sk/blog/-/blogs/progressbar-opening-party', '/blog/progressbar-opening-party'
      r301 '/sk/blog/-/blogs/moderne-sposoby-anonymizacie-prednaska-a-diskusia-o-bitcoin', '/blog/moderne-sposoby-anonymizacie-prednaska-a-diskusia-o-bitcoin'
      r301 '/sk/blog/-/blogs/obhliadka-priestorov-na-tovarenskej-ulici-c-14', '/blog/obhliadka-priestorov-na-tovarenskej-ulici-c-14'
      r301 '/sk/blog/-/blogs/owasp-potrebuje-tvoju-pomoc', '/blog/owasp-potrebuje-tvoju-pomoc'
      r301 '/sk/blog/-/blogs/bratislava-shackinuniversity', '/blog/bratislavashackinuniversity'
      r301 '/sk/blog/-/blogs/habitat-live-zvukove-vysielanie-progressbar-online', '/blog/habitat-live-zvukove-vysielanie-progressbar-online'
      r301 '/sk/blog/-/blogs/startuju-owasp-webappsec-stretnutia-kryptograficke-kluce-ich-distribucia-a-doveryhodnost', '/blog/startuju-owasp-webappsec-stretnutia-kryptograficke-kluce-ich-distribucia-a-doveryhodnost'
      r301 '/sk/blog/-/blogs/martin-rublik-kryptograficke-kluce-ich-distribucia-a-doveryhodnost', '/blog/martin-rublik-kryptograficke-kluce-ich-distribucia-a-doveryhodnost'
      r301 '/sk/blog/-/blogs/jozef-skulavik-network-security', '/blog/jozef-skulavik-network-security'
      r301 '/sk/blog/-/blogs/tik-art-radio-days-6th-till-11th-of-september-2011', '/blog/tik-art-radio-days-6th-till-11th-of-september-2011'
      r301 '/sk/blog/-/blogs/kryptoanarchia-po-19-tich-rokoch-od-vydania-kryptoanarchistickeho-manifesta', '/blog/kryptoanarchia-po-19-tich-rokoch-od-vydania-kryptoanarchistickeho-manifesta'
      r301 '/sk/blog/-/blogs/voltage-control-analogovy-audiovizualny-syntetizator-workshop', '/blog/voltage-control-analogovy-audiovizualny-syntetizator-workshop'
      r301 '/sk/blog/-/blogs/paranoja-liferay-a-lt', '/blog/paranoja-liferay-a-lt'
      r301 '/sk/blog/-/blogs/another-presentation-for-progressbar-opening-party-close-look-dive-into-mobile-phone-hardware', '/blog/another-presentation-for-progressbar-opening-party-close-look-dive-into-mobile-phone-hardware'
      r301 '/sk/blog/-/blogs/ako-bolo-vcera-na-prednaske-mitcha-altmana', '/blog/ako-bolo-vcera-na-prednaske-mitcha-altmana'
      r301 '/skluc/blog/-/blogs/the-inanna-project-an-experiment-in-art-technology-and-the-transformative-power-of-free-hardware-and-software', '/blog/the-inanna-project-an-experiment-in-art-technology-and-the-transformative-power-of-free-hardware-and-software'
      r301 '/sk/blog/-/blogs/postrehy-z-luxemburgska-fotoblog', '/blog/postrehy-z-luxemburgska-fotoblog'
      r301 '/sk/blog/-/blogs/worklab-presentation-of-tik-time-inventors-kabinet', '/blog/worklab-presentation-of-tik-time-inventors-kabinet'
      r301 '/sk/blog/-/blogs/metamorfozy-2010-globalna-klimaticka-zmena', '/blog/metamorfozy-2010-globalna-klimaticka-zmena'
      r301 '/sk/blog/-/blogs/bypassing-web-application-firewalls-wafs', '/blog/bypassing-web-application-firewalls-wafs'
      r301 '/sk/blog/-/blogs/uvod-do-organizacie-casu-metodou-gtd', '/blog/uvod-do-organizacie-casu-metodou-gtd'
      r301 '/sk/blog/-/blogs/rubyslava-stretnutie-fanusikov-ruby', '/blog/rubyslava-stretnutie-fanusikov-ruby'
    end
  end
end
