module Refinery
  module Import

    class OldBase < ActiveRecord::Base
      self.abstract_class = true
      establish_connection :old
    end

    class BlogPost < OldBase
      set_table_name 'blog_posts'
    end

    class BlogComment < OldBase
      set_table_name 'blog_comments'
    end

    def self.truncate_blog_posts
      ::ActiveRecord::Base.connection.execute("TRUNCATE refinery_blog_posts") 
      ::ActiveRecord::Base.connection.execute("TRUNCATE refinery_blog_post_translations") 
    end

    def self.truncate_blog_comments
      ::ActiveRecord::Base.connection.execute("TRUNCATE refinery_blog_comments")
    end

    def self.import_blog_posts

        puts 'blogs import start'
        ::I18n.locale = :sk
        ::Refinery::Import::BlogPost.all(:order => 'id ASC').each do |post|
          if ::Refinery::Blog::Post.find_by_title(post[:title]).blank?
            p = ::Refinery::Blog::Post.create({
              :title => post[:title],
              :body => post[:body],
              :draft => false,
              :user_id => post[:user_id]
            })

            p[:created_at] = post[:created_at]
            p[:updated_at] = post[:updated_at]
            p[:published_at] = post[:published_at]

            p.save!
          end

        end

        puts 'blogs import finished'

        rescue
          puts "error: #{$!}"
    end

    def self.import_blog_comments

        puts 'blogs comments start'
        ::I18n.locale = :sk
        ::Refinery::Import::BlogComment.all(:order => 'id ASC').each do |comment|
            c = ::Refinery::Blog::Comment.create({
              :name => comment[:name],
              :email => comment[:email]
            })

            c[:blog_post_id] = comment[:blog_post_id]
            c[:body] = comment[:body]
            c[:spam] = comment[:spam]
            c[:state] = comment[:state]
            c[:created_at] = comment[:created_at]
            c[:updated_at] = comment[:updated_at]

            c.save!

        end

        puts 'blogs comments finished'

        rescue
          puts "error: #{$!}"
    end
  end

end