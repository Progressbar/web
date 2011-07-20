if defined?(User)
  User.all.each do |user|
    if !user.progressbar_uid.nil?
      if user.plugins.where(:name => 'fees').blank?
        user.plugins.create(:name => 'fees',
                            :position => (user.plugins.maximum(:position) || -1) +1)
      end
    end
  end
end