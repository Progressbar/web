require File.expand_path('../refinery_import.rb', __FILE__)

::I18n.locale = :sk
# Refinery::Import.truncate_blog_posts
# Refinery::Import.import_blog_posts
Refinery::Import.truncate_blog_comments
Refinery::Import.import_blog_comments