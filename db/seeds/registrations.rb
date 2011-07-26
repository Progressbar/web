if defined?(User)
  User.all.each do |user|
    if user.plugins.where(:name => 'registrations').blank?
      user.plugins.create(:name => 'registrations',
                          :position => (user.plugins.maximum(:position) || -1) +1)
    end
  end
end