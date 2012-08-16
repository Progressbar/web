source 'https://rubygems.org'

gem 'rails', '~> 3.2.3'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

gem 'mysql2'

group :development, :test do
  gem 'sqlite3'
  gem 'refinerycms-testing'
  gem "letter_opener"
  gem 'guard-rspec'
  gem 'guard-spork'
  gem 'spork'
  gem 'thin'
end

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
# gem 'refinerycms', :git => 'git://github.com/resolve/refinerycms.git', :branch => 'master'
# gem 'refinerycms-settings', :path => '/home/web-data/work/nethemba/refinerycms-settings'
gem 'refinerycms-settings', :git => 'git://github.com/parndt/refinerycms-settings.git', :branch => 'master'

# Specify additional Refinery CMS Extensions here (all optional):
# gem 'refinerycms-i18n', '~> 2.0.0'
gem 'refinerycms-i18n', :git => 'git://github.com/parndt/refinerycms-i18n.git', :branch => 'master'
gem 'refinerycms-blog', :path => 'vendor/refinerycms-blog', :branch => 'master'
gem 'refinerycms-inquiries', :path => 'vendor/refinerycms-inquiries', :branch => 'master'
# gem 'refinerycms-calendar', :path => 'vendor', :branch => '2-1-experimental'
# gem 'refinerycms-inquiries', '~> 2.0.0'
#  gem 'refinerycms-search', '~> 2.0.0'
#  gem 'refinerycms-page-images', '~> 2.0.0'
gem 'refinerycms-mailinglists', :path => 'vendor/extensions'

gem 'refinerycms-registrations', :path => 'vendor/extensions'
gem 'refinerycms-transactions', :path => 'vendor/extensions'
gem 'refinerycms-fees', :path => 'vendor/extensions'

# gem 'refinerycms-calendar', :path => 'vendor', :branch => 'pb-2'
#gem 'refinerycms-calendar', :path => 'vendor', :branch => 'fb_graph'
#gem 'fb_graph'

gem 'refinerycms-door_statuses', :path => 'vendor/extensions'
