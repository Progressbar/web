begin
  ::I18n.locale = :sk
  
  p_akcie_title = 'Akcie a organizácia'
  p_akcie = Page.find_by_title(p_akcie_title)
  
  unless p_akcie
    p_akcie = Page.create(:title => p_akcie_title, :deletable => false, :show_in_menu => false, :position => Page.last.position.to_i + 1)
    p_akcie.parts.create({
        :title => 'Body',
        :body => IO.read(Rails.root.join('db/templates/akcie-a-organizacia.html')),
        :position => 0
      })

    p_akcie.parts.create({
        :title => 'Side Body',
        :body => IO.read(Rails.root.join('db/templates/akcie-a-organizacia_sidebar.html')),
        :position => 1
      })

    puts "p_akcie created, id: #{p_akcie.id}"    
  else
    p_akcie.parts.first.update_attributes(:body => IO.read(Rails.root.join('db/templates/akcie-a-organizacia.html')))
    p_akcie.parts.last.update_attributes(:body => IO.read(Rails.root.join('db/templates/akcie-a-organizacia_sidebar.html')))
    
    puts "p_akcie updated id: #{p_akcie.id}"    
  end

rescue Exception => e
  puts e.message
end