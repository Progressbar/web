refinery_plugins = {
  'refinery_core' => 0,
  'refinery_dialogs' => 0,
  'refinery_i18n' => 0,
}

superuser_plugins = {
  'refinerycms_inquiries' => 50,
  'registrations' => 60,
  'mailinglists' => 70,
}

moderator_plugins = {
  'refinery_dashboard' => 10,
  'refinery_pages' => 20,
  'refinery_settings' => 30,
  'refinery_users' => 40
}

active_member_plugins = {
  'refinerycms_calendar' => 80,
  'refinerycms_blog' => 90,
  'transactions' => 100,
  'refinery_images' => 110,
  'refinery_files' => 120,
}

member_plugins = {
  'fees' => 130
}

::Refinery::User.all.each {|user|
  user.plugins = []
  user.add_role(:refinery)

  if user.has_role?(:refinery)
    refinery_plugins.each {|name, position|
      if user.plugins.where(:name => name).blank?
        user.plugins.create(:name => name, :position => position)
      else
        user.plugins.update(:position => position)
      end
    }
  end
  if user.has_role?(:superuser)
    superuser_plugins.each {|name, position|
      if user.plugins.where(:name => name).blank?
        user.plugins.create(:name => name, :position => position)
      else
        user.plugins.update(:position => position)
      end
    }

  else
    user.add_role(:member)
    unless ::Refinery::Fees::Fee.where(:user_id => user.id).empty?
      user.add_role(:active_member)

      if ::Refinery::Fees::Fee.where(:user_id => user.id).sum(:amount).to_i > 200
        user.add_role(:moderator)
      end
    end
  end

  if user.has_role?(:moderator) or user.has_role?(:superuser)
    moderator_plugins.each {|name, position|
      if user.plugins.where(:name => name).blank?
        user.plugins.create(:name => name, :position => position)
      else
        user.plugins.update(:position => position)
      end
    }

  end

  if user.has_role?(:active_member) or user.has_role?(:superuser)
    active_member_plugins.each {|name, position|
      if user.plugins.where(:name => name).blank?
        user.plugins.create(:name => name, :position => position)
      else
        user.plugins.update(:position => position)
      end
    }

  end

  if user.has_role?(:member) or user.has_role?(:active_member) or user.has_role?(:superuser)
    member_plugins.each {|name, position|
      if user.plugins.where(:name => name).blank?
        user.plugins.create(:name => name, :position => position)
      end
    }
  end
}
