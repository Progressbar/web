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
gem 'refinerycms', github: 'progressbarsk/refinerycms', :branch => 'fix_insert_iframe', ref: 'd9508b813f3d9944895223dabf89881cf87b491d'
# gem 'refinerycms', :git => 'https://github.com/refinery/refinerycms.git', :branch => 'master'
#gem 'refinerycms-settings', path: 'vendor/refinerycms-settings', ref: 'abf2382352f51e15c5377e34ca5fcff6ed40a0fd', branch: 'master'#'f110f54'
gem 'refinerycms-settings', github: 'refinery/refinerycms-settings', ref: 'abf2382352f51e15c5377e34ca5fcff6ed40a0fd', branch: 'master'#'f110f54'
#:git => 'https://github.com/refinery/refinerycms-settings.git', :branch => 'master'

# Specify additional Refinery CMS Extensions here (all optional):
# gem 'refinerycms-i18n', '~> 2.0.0'
gem 'refinerycms-i18n', github: 'refinery/refinerycms-i18n', ref: '0f6c75058325ea77e9cb10810fa8ac44c1f78b12', branch: 'master'

gem 'acts-as-taggable-on', '~> 3.2.6'
gem 'refinerycms-blog', github: 'refinery/refinerycms-blog', ref: 'b49f3ae84d550742ba560773fd5876657145cb9c' # ref: 'fe6831de448276a7a8d9aa035c8dfed1e31d546c', branch: 'master'
gem 'refinerycms-inquiries', github: 'keram/refinerycms-inquiries', ref: 'c95c740c77740b5727b0f442770e58871ffb9f02', branch: 'fix_second_body_part_bug'
gem 'refinerycms-calendar', github: 'Progressbar/refinerycms-calendar', branch: 'progressbar_allowed_iframe'


gem 'refinerycms-mailinglists', :path => 'vendor/extensions'
gem 'refinerycms-registrations', :path => 'vendor/extensions'
gem 'refinerycms-transactions', :path => 'vendor/extensions'
gem 'refinerycms-fees', :path => 'vendor/extensions'
gem 'refinerycms-door_statuses', :path => 'vendor/extensions'
