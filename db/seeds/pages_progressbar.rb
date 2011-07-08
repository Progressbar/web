::I18n.locale = :sk

p_kontakt = Page.find_by_title('Kontakt')

if p_kontakt
#  p_kontakt.deletable = true
#  p_kontakt.save
#  p_kontakt.destroy
#  p_kontakt_pos = p_kontakt.position.to_i
#end
#
#if p_kontakt.nil?
#  p_kontakt = Page.create(:title => 'Kontakt', :deletable => false, :show_in_menu => true, :position => p_kontakt_pos)
  p_kontakt.parts.first.update_attributes(:body => IO.read(Rails.root.join('db/templates/kontakt.html')))
  p_kontakt.parts.last.update_attributes(:body => '')
    
#
#  p_kontakt.parts.where({
#      :title => 'Side Body',
#      :body => '',
#      :position => 1
#    })
  puts 'page Kontakt updated'
end
