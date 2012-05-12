# encoding: utf-8

Refinery::I18n.configure do |config|
  config.enabled = true

  config.default_locale = :en

  config.current_locale = :en

  config.default_frontend_locale = :sk

  config.frontend_locales = [:sk, :en]

  config.locales = {:en=>"English", :sk=>"Slovenský"}
end
