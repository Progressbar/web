require 'rails/all'
require Rails.root.join('db/imports/old_import.rb')

module Refinery

  begin
    puts "delete current users #{::Refinery::User.delete_all()}"

    #    puts old_users[:email]
    #    old_users.last.each do |property, value|
    #      puts "#{property} #{value}"
    #    end
    old_users = OldUsers.limit(3)
    ucols = ::Refinery::User.columns
    old_users.each do |ou|
#      u = ::Refinery::User.create(:username => ou.username,
#        :email => ou.email,
#        :password => ou.encrypted_password,
#        :password_confirmation => ou.encrypted_password)

      udata = Hash.new
      ucols.each do |c|
#        puts "#{c.name} : #{ou[c.name.to_sym]}" if ou[c.name.to_sym]
        udata[c.name.to_sym] = ou[c.name.to_sym] if ou[c.name.to_sym]
#        begin
#          u.update_attribute(c.name.to_sym, ou[c.name.to_sym]) if ou[c.name.to_sym]
#          u.save
#        rescue
#          puts "problem: #{$!}"
#        end
#        u[c.name.to_sym] = ou[c.name.to_sym] if ou[c.name.to_sym]
      end

      u = ::Refinery::User.create(udata)
#      u.add_role(:member)
#      u.add_role(:refinery)


#      puts u.to_a
    end

    #      if u.valid?
    #        #
    #      end
    #    end

    puts 'users import finish'
    #  puts BlogPost.delete_all()
    #
    #  old_blogs = OldBlog.all(:order => 'entryId DESC')
    #  puts "blogs to import: #{old_blogs.count}"
    #
    #  old_blogs.each do |lb|
    #    content = ActionController::Base.helpers.sanitize(lb.content.to_s,
    #      :tags => %w(h1 h2 h3 h4 h5 p div a strong table thead tbody tr th td img br em),
    #      :attributes => %w(id class href title src width height))
    #
    #    content = content.gsub(/&lt;!--(.+)-->/, '')
    #    content = content.gsub(/<[^>\/]+>([^\S]*)(.?)(&nbsp;)*<\/[^>]+>/, '')
    #    content = content.gsub(/<br ?\/?>[^\S]*<\/p>/, '</p>')
    #    content = content.gsub(/<p>[^\S]*<br ?\/?>/, '<p>')
    #
    #    u = User.where('progressbar_uid = ?', lb.userId).first
    #
    #    if u
    #      b = BlogPost.create(
    #        :title => lb.title,
    #        :body => content,
    #        :user_id => u.id
    #      )
    #
    #      if b.valid?
    #        if content =~ /src="(\.?\/([^"]+))"/
    #          puts "relative images in post: #{lb.entryId} -- #{lb.title} -- #{content.match(/src="\.?\/([^"]+)"/).to_s}"
    #        end
    #
    #        b.draft = 0
    #        b.published_at = lb.displayDate
    #        b.created_at = lb.createDate
    #        b.save
    #
    #      else
    #        puts "#{lb.entryId} -- #{lb.status} -- #{lb.title} -- #{b.errors.to_s}"
    #      end
    #    else
    #      puts "user not found: #{lb.entryId} -- #{lb.status} -- #{lb.title}"
    #    end
    #
    #  end
    #
    #  puts 'blogs import finish'
    #
    #
    #  # events import
    #  Event.delete_all()
    #  EventCategory.delete_all()
    #
    #  old_events = OldEvent.all()
    #  old_events.each do |le|
    #    description = ActionController::Base.helpers.sanitize(le.description.to_s,
    #      :tags => %w(h1 h2 h3 h4 h5 p div a strong table thead tbody tr th td img br em),
    #      :attributes => %w(id class href title src width height))
    #
    #    description = description.gsub(/&lt;!--(.+)-->/, '')
    #    u = User.where('progressbar_uid = ?', le.userId).first
    #
    #    if u
    #      b = Event.create(
    #        :title => le.title,
    #        :description => description,
    #        :start_at => le.startDate,
    #        :end_at => le.endDate
    #      )
    #
    #      if b.valid?
    #        if description =~ /src="(\.?\/([^"]+))"/
    #          puts "relative images in post: #{le.eventId} -- #{le.title} -- #{description.match(/src="\.?\/([^"]+)"/).to_s}"
    #        end
    #
    #        b.user_id = u.id
    #        b.created_at = le.createDate
    #        b.duration_hour = le.durationHour
    #        b.duration_minute = le.durationMinute
    #        b.all_day = le.allDay
    #        b.repeating = le.repeating
    #        b.recurrence = le.recurrence
    #
    #        b.categories = [EventCategory.find_or_create_by_name(le.type_)] unless le.type_.nil?
    #
    #
    #        b.save
    #
    #      else
    #        puts "#{le.eventId} -- #{le.userName} -- #{le.title} -- #{b.errors.to_s}"
    #      end
    #    end
    #  end
    #
    #puts 'events import finish'
    #
    #
    #rescue NameError
    #  puts 'name err'
  end
end
