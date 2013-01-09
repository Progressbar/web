source 'https://rubygems.org'

#gem 'rails', :path => 'vendor/rails/'
gem 'rails', '~> 3.2.3'

# Bundle edge Rails instead:
# gem 'rails', :git => 'https://github.com/rails/rails.git'

gem 'mysql2'
gem 'rack-ssl', :require => 'rack/ssl'
gem 'rack-rewrite'

group :development, :test do
  gem 'sqlite3'
  gem 'letter_opener'
  gem 'thin'
end

group :test do
  gem 'webmock'
  gem 'refinerycms-testing'
  gem 'poltergeist'
  gem 'guard-rspec'
  gem 'guard-spork'
  gem 'spork'
end

gem 'faraday'
gem 'nokogiri'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platform => :ruby

  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'ruby-debug19', :require => 'ruby-debug'

# Refinery CMS
# gem 'refinerycms', '~> 2.0.3' #, :path => 'vendor/refinerycms', :branch => '2-0-stable'
gem 'refinerycms', :path => 'vendor/refinerycms', :branch => 'master'
# gem 'refinerycms', :git => 'https://github.com/refinery/refinerycms.git', :branch => 'master'
gem 'refinerycms-settings', :git => 'https://github.com/refinery/refinerycms-settings.git', :branch => 'master'

# Specify additional Refinery CMS Extensions here (all optional):
# gem 'refinerycms-i18n', '~> 2.0.0'
gem 'refinerycms-i18n', :git => 'https://github.com/refinery/refinerycms-i18n.git', :branch => 'master'
gem 'refinerycms-blog', :path => 'vendor/refinerycms-blog', :branch => 'master'
gem 'refinerycms-inquiries', :path => 'vendor/refinerycms-inquiries', :branch => 'master'
gem 'refinerycms-mailinglists', :path => 'vendor/extensions'

gem 'refinerycms-registrations', :path => 'vendor/extensions'
gem 'refinerycms-transactions', :path => 'vendor/extensions'
gem 'refinerycms-fees', :path => 'vendor/extensions'

gem 'refinerycms-calendar', :path => 'vendor/refinerycms-calendar'
gem 'refinerycms-door_statuses', :path => 'vendor/extensions'
