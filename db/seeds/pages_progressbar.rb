::I18n.locale = :sk

puts 'locale -> sk'

p_stanovy = Page.find_by_title('Stanovy')
if p_stanovy
  p_stanovy.parts.first.update_attributes(:body => IO.read(Rails.root.join('db/templates/stanovy.html')))
  p_stanovy.parts.last.update_attributes(:body => IO.read(Rails.root.join('db/templates/stanovy_sidebar.html')))
  puts 'page stanovy updated'
end

p_kontakt = Page.find_by_title('Kontakt')

if p_kontakt
  p_kontakt.parts.first.update_attributes(:body => IO.read(Rails.root.join('db/templates/kontakt.html')))
  p_kontakt.parts.last.update_attributes(:body => '')
  puts 'page kontakt updated'
end

puts 'progressbar pages seed finish'