# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Progressbar::Application.initialize!
#
#Progressbar::Application.config.middleware.insert_before ActionDispatch::Reloader, Rack::Cache, {
#  :verbose     => true,
#  :metastore   => "file:#{Rails.root.join('tmp', 'dragonfly', 'cache', 'meta')}",
#  :entitystore => "file:#{Rails.root.join('tmp', 'dragonfly', 'cache', 'body')}"
#}

