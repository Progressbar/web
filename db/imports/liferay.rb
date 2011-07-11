puts 'before run uncoment what you want (re)import from liferay db'

require 'rails/all'
require 'db/imports/liferay_import.rb'

begin
  if User.count > 0
    raise 'Missing progressbar import migration (try `git pull ..` and then `rake db:migrate`).' unless User.first.has_attribute?('progressbar_uid')
  end


#  problematic users
#  Marcel Hecko -- 30829 -- maco@maco.sk
#  usernamehas already been taken
#  Lubo Nagajda -- 36499 -- l.nagajda@gmail.com
#  usernamehas already been taken
  
#  # clean env
#### User.delete_all()
  puts User.delete_all('progressbar_uid IS NOT NULL OR last_sign_in_at IS NULL')
  
  liferay_users = LiferayUser.all
  liferay_users.each do |lu|
    fb = tw = icq = mob = jab = ''
    if lu.contact
      fb = lu.contact.facebookSn.gsub(/http:\/\/(www\.)?facebook\.com\//, '')
      tw = lu.contact.twitterSn.gsub(/http:\/\/(www\.)?twitter\.com\//, '')
      icq = lu.contact.icqSn
      mob = lu.contact.smsSn
      jab = lu.contact.jabberSn      
    end
#    pass = (0...20).map{ ('a'..'z').to_a[rand(26)] }.join
    pass = 'jurko'
    uname = "#{lu.firstName} #{lu.lastName}"
    uname = lu.emailAddress if uname.nil? or uname.empty?

    u = User.create(:username => uname, :email => lu.emailAddress,:password => pass, :password_confirmation => pass)
    
    if u.valid?
      u.progressbar_uid = lu.userId
      u.progressbar_screenname = lu.screenName
      u.progressbar_openid = lu.openId
      u.progressbar_language = lu.languageId
      u.progressbar_comment = lu.comments
      u.progressbar_firstname = lu.firstName
      u.progressbar_lastname = lu.lastName
      u.progressbar_midlename = lu.middleName
      u.progressbar_job = lu.jobTitle
      u.progressbar_active = lu.active_
      u.progressbar_digest = lu.digest
      u.progressbar_facebook = fb
      u.progressbar_twitter = tw
      u.progressbar_jabber = jab
      u.progressbar_icq = icq
      u.progressbar_mobile = mob
      u.add_role(:member)
      u.add_role(:refinery)
      
      u.plugins = ['refinerycms_blog', 'calendar', 'refinery_images', 'refinery_files']
      
      u.save
    else
      puts "#{lu.firstName} #{lu.lastName} -- #{lu.userId} -- #{lu.emailAddress} -- #{u.errors.to_s}" 
    end
  end
  
  puts 'users import finish'

#problematic blog posts
#26955 -- 0 -- Postrehy z Luxemburgska (fotoblog) -- titlehas already been taken
#26377 -- 0 -- Zuzana Husárová : Generatívna literatúra -- titlehas already been taken
#26365 -- 2 -- Zuzana Husárová : Generatívna literatúra -- titlehas already been taken
#25711 -- 0 -- Roboti útočia -- titlehas already been taken
#25672 -- 0 -- Prednáška Samyho Kamkara v Bratislave -- titlehas already been taken
#24578 -- 0 -- Metamorfózy 2010 - Globalna klimatická zmena -- titlehas already been taken
#24208 -- 0 -- Paranoja, Liferay a LT -- titlehas already been taken
#23392 -- 0 -- Ako bolo včera na prednáške Mitcha Altmana -- titlehas already been taken
#23329 -- 0 -- prednáška 8.9. "Úvod do x86 strojového kódu a assembleru" -- titlehas already been taken
#21231 -- 0 -- Prednáška "Úvod do umelej inteligencie" a lightning talk -- titlehas already been taken
#20623 -- 0 -- Zápis z porady členov -- titlehas already been taken
#20459 -- 0 -- Eth0 a blížiace sa konferencie -- titlehas already been taken
#18982 -- 0 -- Stretnutie prípravnej skupiny 12.8.2010 -- titlehas already been taken
#18348 -- 0 -- Obhliadka priestorov pre Progressbar.sk -- titlehas already been taken
#18339 -- 0 -- Schôdzka s prorektorom Petrášom a doc. Lešinským -- titlehas already been taken
#18328 -- 0 -- Ustanovujúca schôdza združenia Progressbar -- titlehas already been taken
#18318 -- 0 -- Stretnutie ZSVTS -- titlehas already been taken
#          relative images in post: 36614 -- VOLTAGE CONTROL - ANALOGOVY AUDIOVIZUALNY SYNTETIZATOR / workshop -- src="/image/image_gallery?uuid=1b2a2299-6902-4857-9bb0-21fa4a3430a1&amp;groupId=33538&amp;t=1304252582681"
#          relative images in post: 33606 -- progressbar opening party :: evening program -- src="/image/image_gallery?uuid=cc9ff823-5576-4804-a643-52abcf60446a&amp;groupId=33538&amp;t=1297786921441"
#          relative images in post: 28511 -- VÚZ -- src="/image/image_gallery?uuid=0a5191c9-3f55-4599-a3bb-175c746382ac&amp;groupId=10379&amp;t=1290211777867"
#          relative images in post: 28321 -- First Lego League 2010 -- src="/image/image_gallery?uuid=37440398-a900-40f6-bf25-21354a2220af&amp;groupId=12571&amp;t=1289757160569"
#          relative images in post: 28102 -- Obhliadka priestorov na Továrenskej ulici č. 14 -- src="/image/image_gallery?uuid=04ee0871-3571-48a8-beda-1b890b1708c9&amp;groupId=10379&amp;t=1289596261355"
#          relative images in post: 27149 -- Postrehy z Luxemburgska (fotoblog) -- src="/image/image_gallery?uuid=de5c733d-84e8-4ca2-99a4-da4dfba21b04&amp;groupId=10842&amp;t=1288621168961"
#          relative images in post: 26353 -- Moja prvá "vyhackovaná" vec -- src="/image/image_gallery?uuid=3dafe28e-dc09-4b2c-8043-1f68d7cda964&amp;groupId=12151&amp;t=1287750729484"          
#
#  puts BlogPost.delete_all()
#  
#  liferay_blogs = LiferayBlog.all(:order => 'entryId DESC')
#  puts "blogs to import: #{liferay_blogs.count}"
#  
#  liferay_blogs.each do |lb|
#    content = ActionController::Base.helpers.sanitize(lb.content.to_s, 
#      :tags => %w(h1 h2 h3 h4 h5 p div a strong table thead tbody tr th td img br em), 
#      :attributes => %w(id class href title src width height))
#    
#    content = content.gsub(/&lt;!--(.+)-->/, '')
#    content = content.gsub(/<[^>\/]+>([^\S]*)(.?)(&nbsp;)*<\/[^>]+>/, '')
#    content = content.gsub(/<br ?\/?>[^\S]*<\/p>/, '</p>')
#    content = content.gsub(/<p>[^\S]*<br ?\/?>/, '<p>')
#    puts content
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
#  liferay_events = LiferayEvent.all()
#  liferay_events.each do |le|
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
