if defined?(::Refinery::User)
  ::Refinery::User.all.each do |user|
    if (user.has_role?(:superuser) or user.has_role?(:member)) and user.plugins.where(:name => 'refinerycms-fees').blank?
      user.plugins.create(:name => 'refinerycms-fees',
                          :position => (user.plugins.maximum(:position) || -1) +1)
    end
  end
end


