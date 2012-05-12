# encoding: utf-8
# rails runner db/backup_micro.rb

module Refinery

  ids = Progressbar::Application::PAGES
  pages = {
    :home => {
			:title => { :sk => 'Úvod', :en => 'Home'}
    },
    :about => {
			:title => { :sk => 'O nás', :en => 'About us'},
      :attributes => {:deletable => false, :show_in_menu => false}
    },
    :contact => {
      :title => { :sk => 'Kontakt', :en => 'Contact'},
    },
    :contact_thank_you => {
      :title => { :sk => 'Ďakujeme', :en => 'Thank You'},
      :attributes => {:deletable => false, :show_in_menu => false}
    },
    :blog => {
      :title => { :sk => 'Blog', :en => 'Blog'},
      :attributes => {:deletable => false, :show_in_menu => true}
    },
    :wiki => {
      :title => { :sk => 'Wiki', :en => 'Wiki'},
      :attributes => {
        :deletable => true,
        :show_in_menu => true,
        :url => 'http://wiki.progressbar.sk' }
    },
    :join_us => {
      :title => { :sk => 'Pridaj sa', :en => 'Join us'},
      :attributes => {:deletable => false, :show_in_menu => true}
    },
    :events => {
      :title => { :sk => 'Kalendár', :en => 'Calendar'},
      :attributes => {:deletable => false, :show_in_menu => true}
    },
    :colophon => {
      :title => { :sk => 'Colophon', :en => 'Colophon'},
      :attributes => {:deletable => false, :show_in_menu => false}
    },
  }

  pages.each do |psym, p|
    id = "#{psym}_page_id".upcase.to_sym
    page = Page.find_by_id(ids[id])

    if page

      I18n.frontend_locales.each do |lang|
        ::I18n.locale = lang

        Pages.default_parts.each do |part_title|
          file_part_name = part_title.downcase.gsub(/ /, '_')
          part_file_path = Rails.root.join("db/backup_templates/#{psym}_#{file_part_name}_#{lang}.html")
          part = page.parts.find_by_title(part_title)
          if part
            File.open(part_file_path, "w+") do |f|
              f.write(part.body)
            end
          end
        end

      end if I18n.frontend_locales.any?
    end
  end

end
