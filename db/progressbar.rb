# encoding: utf-8
# rails runner db/progressbar.rb

module Refinery

  class PbImport
    def import_settings

      settings = {
        :site_email => 'info@progressbar.sk',
        :site_twitter => 'progressbarsk',
        :site_twitter_link => 'https://twitter.com/progressbarsk',
        :site_facebook_link => 'https://www.facebook.com/progressbar',
        :site_foursquare_link => 'https://foursquare.com/venue/7713190',
        :site_github_link => 'https://github.com/Progressbar',
        :site_kyberia_link => 'https://kyberia.sk/id/5459247',
        :site_soup_link => 'http://soup.progressbar.sk/',
        :site_location_street => 'Cukrová 14',
        :site_location_city => 'Bratislava',
        :site_location_postal_code => '811 08',
        :site_location_country => 'Slovakia',
        :site_location_latitude_title => '48.14853',
        :site_location_latitude => 'N 48° 8\' 54.707"',
        :site_location_longitude_title => '17.119582',
        :site_location_longitude => 'E 17° 7\' 10.495"',
        :general_mailing_list_url => 'http://lists.progressbar.sk/mailman/listinfo/general-discussion' ,
        :general_mailing_list_subscribe_url => 'http://lists.progressbar.sk/mailman/subscribe/general-discussion' ,
        :general_mailing_list_unsubscribe_url => 'http://lists.progressbar.sk/mailman/options/general-discussion' ,
        :events_mailing_list_url => 'http://lists.progressbar.sk/mailman/listinfo/events' ,
        :events_mailing_list_subscribe_url => 'http://lists.progressbar.sk/mailman/subscribe/events' ,
        :events_mailing_list_unsubscribe_url => 'http://lists.progressbar.sk/mailman/options/events' ,
        :site_bank_account => '2600121198/8330' ,
        :site_bank_iban => 'SK1583300000002600121198' ,
        :site_bank_swift => 'FIOZSKBAXXX' ,
        :site_bitcoin => '18qKmRKFTGzdEW5GiBnwmCdLN54813ceN3' # 1pbarBA4zP1bbCRydBUxweQxVfsaAHqDo
      }

      settings.each {|k, v|
        Refinery::Setting.set(k, v.to_s)
        puts "#{k} : #{v}"
      }
      
    end

    def import_users

      users = [
        {:username => 'admin', :email => 'info@progressbar.sk'}
      ]

      users.each do |user|
        u = User.find_by_email(user[:email])
        unless u
          p = (Rails.env.production?) ? (0...32).map{ ('a'..'z').to_a[rand(26)] }.join : 'nbusr123'
          u = User.create(user.merge({:password => p, :password_confirmation => p}))
          puts "User \"#{user[:username]}\" with email\"#{user[:email]}\" was created."
        end

        u.add_role(:superuser)
        u.add_role(:refinery)

        u.add_role(:member)
        u.add_role(:active_member)
        u.add_role(:moderator)

      end

    end

    def import_pages

      ids = Progressbar::Application::PAGES
      pages = {
        :home => {
          :title => { :sk => 'Úvod', :en => 'Home'},
          :menu_position => 1
        },
        :events => {
          :title => { :sk => 'Kalendár', :en => 'Calendar'},
          :attributes => {:deletable => false, :show_in_menu => true},
          :menu_position => 10
        },
        :blog => {
          :title => { :sk => 'Blog', :en => 'Blog'},
          :attributes => {:deletable => false, :show_in_menu => true},
          :menu_position => 20
        },
        :records => {
          :title => { :sk => 'Záznamy', :en => 'Records'},
          :attributes => {:deletable => false, :show_in_menu => true},
          :menu_position => 40
        },
        :statutes => {
          :title => { :sk => 'Stanovy', :en => 'Statutes'},
          :attributes => {:deletable => false, :show_in_menu => true},
          :menu_position => 50
        },
        :sponsors => {
          :title => { :sk => 'Sponzori', :en => 'Sponsors'},
          :attributes => {:deletable => false, :show_in_menu => true},
          :menu_position => 60
        },
        :media => {
          :title => { :sk => 'Médiá', :en => 'Media'},
          :attributes => {:deletable => false, :show_in_menu => true},
          :menu_position => 80
        },
        :wiki => {
          :title => { :sk => 'Wiki', :en => 'Wiki'},
          :attributes => {
            :deletable => true,
            :show_in_menu => true,
            :link_url => 'http://wiki.progressbar.sk' },
          :menu_position => 90
        },
        :contact => {
          :title => { :sk => 'Kontakt', :en => 'Contact'},
          :menu_position => 100
        },
        :contact_thank_you => {
          :title => { :sk => 'Ďakujeme', :en => 'Thank You'},
          :attributes => {:deletable => false, :show_in_menu => false}
        },
        :about => {
          :title => { :sk => 'O nás', :en => 'About us'},
          :attributes => {:deletable => false, :show_in_menu => false}
        },
        :join_us => {
          :title => { :sk => 'Pridaj sa', :en => 'Join us'},
          :attributes => {:deletable => false, :show_in_menu => false}
        },
        :colophon => {
          :title => { :sk => 'Colophon', :en => 'Colophon'},
          :attributes => {:deletable => false, :show_in_menu => false}
        },
        :actions => {
          :title => { :sk => 'Akcie a organizácia', :en => 'Actions and organization'},
          :attributes => {:deletable => false, :show_in_menu => false}
        },
        :hardware => {
          :title => { :sk => 'Hardware', :en => 'Hardware'},
          :attributes => {:deletable => false, :show_in_menu => false}
        },
        #    :gallery => {
        #      :title => { :sk => 'Galéria', :en => 'Gallery'},
        #      :attributes => {
        #        :deletable => true,
        #        :show_in_menu => true,
        #        :link_url => 'http://wiki.progressbar.sk'
        #      }
        #    },
        :bitcoin => {
          :title => { :sk => 'Bitcoin', :en => 'Bitcoin'},
          :attributes => {:deletable => false, :show_in_menu => false}
        }
      }

      pages.each do |psym, p|
        id = "#{psym}_page_id".upcase.to_sym
        page = Page.find_by_id(ids[id])
        page = Page.find_by_title(p[:title][::I18n.locale]) unless page
        attributes = {:deletable => false, :show_in_menu => true}
        attributes = attributes.merge(p[:attributes]) if p[:attributes]

        page_created = false
        unless page
          attributes = attributes.merge({:title => p[:title][::I18n.locale].to_s})
          page = Page.create(attributes)
          page.save!
          page_created = true
        end

        Pages.default_parts.each_with_index do |part_title, i|
          part = page.parts.find_by_title(part_title)
          unless part
            page.parts.create({
                :title => part_title,
                :body => "",
                :position => i
              })
          else
            part.update_attributes(:position => i)
          end
        end

        I18n.frontend_locales.each do |lang|
          ::I18n.locale = lang

          Pages.default_parts.each do |part_title|
            file_part_name = part_title.downcase.gsub(/ /, '_')
            part_file_path = Rails.root.join("db/templates/#{psym}_#{file_part_name}_#{lang}.html")
            part = page.parts.find_by_title(part_title)
            part.update_attributes(:body => IO.read(part_file_path)) if File.exist?(part_file_path)
            # puts part_file_path # debug
          end

          attributes = attributes.merge({:custom_slug => p[:custom_slug][lang].to_s}) if p[:custom_slug] and p[:custom_slug][lang]
          attributes = attributes.merge({:title => p[:title][lang].to_s})
          page.update_attributes(attributes)
        end if I18n.frontend_locales.any?

        puts "Page \"#{page.title}\" (#{page.id}) #{page_created ? 'created' : 'updated'}."
      end


      tmp_arr = []
      menu_pages = []

      pages.each do |s, p|
        tmp_arr[p[:menu_position]] = Page.find_by_title(p[:title][::I18n.locale]) if p[:menu_position]
      end

      tmp_arr.compact.each do |p|
        menu_pages << p
      end

      menu_pages.each_with_index do |p, i|
        if i > 0
          p.move_to_right_of(menu_pages[i - 1])
        end
      end
    end

  end

  pb = PbImport.new

  puts 'import/update settings'
  pb.import_settings
  puts 'import/update users'
  pb.import_users
  puts 'import/update pages'
  pb.import_pages

end
