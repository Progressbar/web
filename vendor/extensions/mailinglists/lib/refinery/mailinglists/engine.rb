module Refinery
  module Mailinglists
    class Engine < Rails::Engine
      include Refinery::Engine
      isolate_namespace Refinery::Mailinglists

      engine_name :refinery_mailinglists

      initializer "register refinerycms_mailinglists plugin" do
        Refinery::Plugin.register do |plugin|
          plugin.name = "mailinglists"
          plugin.url = proc { Refinery::Core::Engine.routes.url_helpers.mailinglists_admin_subscribers_path }
          plugin.pathname = root
          plugin.activity = {
            :class_name => :'refinery/mailinglists/subscriber',
            :title => 'email'
          }
          plugin.always_allow_access = false
          plugin.dashboard = false
        end
      end

      config.after_initialize do
        Refinery.register_extension(Refinery::Mailinglists)
      end
    end
  end
end
