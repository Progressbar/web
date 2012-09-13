refinery_plugins = {
  'refinery_core' => 0,
  'refinery_dialogs' => 0,
  'refinery_i18n' => 0,
  'refinery_dashboard' => 10
}

superuser_plugins = {
  'registrations' => 60,
  'mailinglists' => 70,
  'refinery_users' => 40,
  'refinery_settings' => 30
}

moderator_plugins = {
  'refinery_pages' => 20,
  'refinerycms_inquiries' => 50
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

# ProgressBarSk
superusers = [1]

# juraj, wilder, p.draxler, j.kubica, wao
moderators = [3, 7, 12, 16, 33]

# Tomas Stranovsky
banned_users = [267]

::Refinery::User.all.each {|user|
  user.plugins = []
  user.roles = []
  # user.remove_role(:moderator)
  # user.remove_role(:superuser)
  # user.remove_role(:refinery)
  unless user.id.in?(banned_users)
    user.add_role(:refinery)
    user.add_role(:superuser) if user.id.in?(superusers)
    user.add_role(:moderator) if user.id.in?(moderators)

    refinery_plugins.each {|name, position|
      if user.plugins.where(:name => name).blank?
        user.plugins.create(:name => name, :position => position)
      else
        user.plugins.update(:position => position)
      end
    }

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
      if ::Refinery::Fees::Fee.where(:user_id => user.id).any? &&
         ::Refinery::Fees::Fee.where(:user_id => user.id).sum(:amount).to_i > 30

        user.add_role(:active_member)
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
  end
}
