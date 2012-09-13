require 'faraday'

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

    class CalendarEvent < OldBase
      set_table_name 'events'
    end

    class CalendarCategory < OldBase
      set_table_name 'event_categories'
    end

    class CalendarCategorization < OldBase
      set_table_name 'event_categorizations'
    end

    class Transaction < OldBase
      set_table_name 'fees'
    end

    def self.truncate_blog_posts
      ::ActiveRecord::Base.connection.execute("TRUNCATE refinery_blog_posts") 
      ::ActiveRecord::Base.connection.execute("TRUNCATE refinery_blog_post_translations") 
    end

    def self.truncate_blog_comments
      ::ActiveRecord::Base.connection.execute("TRUNCATE refinery_blog_comments")
    end

    def self.truncate_events
      ::ActiveRecord::Base.connection.execute("TRUNCATE refinery_calendar_events_categorization")
      ::ActiveRecord::Base.connection.execute("TRUNCATE refinery_calendar_categories")
      ::ActiveRecord::Base.connection.execute("TRUNCATE refinery_calendar_places")
      ::ActiveRecord::Base.connection.execute("TRUNCATE refinery_calendar_events")
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

    def self.import_events

        puts 'events start'
        ::I18n.locale = :sk
        ::Refinery::Import::CalendarEvent.all(:order => 'id ASC').each do |event|
            e = ::Refinery::Calendar::Event.create({
              :title => event[:title],
              :description => event[:description],
              :start_date => event[:start_at],
              :end_date => event[:end_at],
              :featured => event[:featured].present? ? event[:featured] : false,
              :location_id => 1,
              :user_id => event[:user_id].present? ? event[:user_id] : 1,
              :image_id => event[:image_id],
              :published_at => event[:published_at].present? ? event[:published_at] : Time.now,
              :draft => false
            })

            e[:created_at] = event[:created_at]
            e[:updated_at] = event[:updated_at]
            #e[:published_at] = event[:published_at]

            e.save!
        end

        puts 'events finished'

        rescue
          puts "error: #{$!}"
    end


    def self.import_fees_as_transaction
      conn = Faraday.new(url: 'http://localhost:3000') do |f| # , proxy: 'http://127.0.0.1:3128'
        f.request  :url_encoded             # form-encode POST params
        # f.response :logger                  # log requests to STDOUT
        f.adapter  Faraday.default_adapter  # make requests with Net::HTTP
        f.headers = {
          'Cookie' => '',
          'User-Agent' => ''
        }
      end

      to_account = '2600121198/8330'
      ::Refinery::Import::Transaction.all.each do |fee|
        custom_type = ''
        primary_type = (fee.from_account == to_account) ? 'outcome' : 'income'
        custom_type = 'fee' if fee.user_id.present?

        if fee.user_id.present? 
          transaction = {
            :primary_type => primary_type,
            :from_account => fee.from_account,
            :to_account => to_account,
            :vs => fee.vs || fee.user_id || nil,
            :amount => fee.amount,
            :currency => fee.currency,
            :realized_at => fee.created_at,
            :message => fee.message,
            :stamp => fee.stamp,
            :custom_type => custom_type
          }
          
          conn.post '/api/transaction/new', { 
            :transaction => transaction
          }

        end
      end
    end
  end

end