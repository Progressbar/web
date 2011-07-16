source 'http://rubygems.org'

gem 'rails', '3.0.9'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

#gem 'sqlite3'
#gem 'mysql2', '~> 0.2.3'
#gem 'mysql2'

gem 'mysql2', '~> 0.2.7'

# Use unicorn as the web server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger (ruby-debug for Ruby 1.8.7+, ruby-debug19 for Ruby 1.9.2+)
# gem 'ruby-debug'
# gem 'ruby-debug19', :require => 'ruby-debug'

# Bundle the extra gems:
# gem 'bj'
# gem 'nokogiri'
# gem 'sqlite3-ruby', :require => 'sqlite3'
# gem 'aws-s3', :require => 'aws/s3'

# Bundle gems for the local environment. Make sure to
# put test-only gems in this group so their generators
# and rake tasks are available in development mode:
# group :development, :test do
#   gem 'webrat'
# end

# REFINERY CMS ================================================================
# Anything you put in here will be overridden when the app gets updated.

gem 'refinerycms',              '~> 1.0.0'

#gem 'pjax-rails'

group :development, :test do
  # To use refinerycms-testing, uncomment it (if it's commented out) and run 'bundle install'
  # Then, run 'rails generate refinerycms_testing' which will copy its support files.
  # Finally, run 'rake' to run the tests.
  # gem 'refinerycms-testing',    '~> 1.0.0'
  # gem 'annotate'
end

# END REFINERY CMS ============================================================

# USER DEFINED


# Specify additional Refinery CMS Engines here (all optional):
gem 'refinerycms-inquiries',    '~> 1.0'
gem "refinerycms-news",         '~> 1.2'
gem 'refinerycms-search'
#gem 'refinerycms-blog',         '~> 1.6.2'
gem 'refinerycms-blog', :git => 'git://github.com/resolve/refinerycms-blog.git'
# gem 'refinerycms-page-images',  '~> 1.0'

#gem 'refinerycms-calendar', :git => 'git://github.com/resolve/refinerycms-calendar.git'
gem 'refinerycms-calendar', :path => 'vendor/'
gem 'refinerycms-snippets', '~> 0.4'

#gem 'refinerycms-memberships', :git => 'git://github.com/rbriank/refinerycms_membership.git'
##gem 'refinerycms-memberships', '~> 1.0'
#gem 'refinerycms-members', :path => 'vendor/'
#gem 'refinerycms-memberships', :path => 'vendor/'

# Add i18n support (optional, you can remove this if you really want to).
gem 'refinerycms-i18n',         '~> 1.0.0'

# END USER DEFINED
