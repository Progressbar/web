module Refinery
  module Fees
    class Engine < Rails::Engine
      include Refinery::Engine
      isolate_namespace Refinery::Fees

      engine_name :refinery_fees

      initializer "register refinerycms_fees plugin" do
        Refinery::Plugin.register do |plugin|
          plugin.name = "fees"
          plugin.url = proc { Refinery::Core::Engine.routes.url_helpers.fees_admin_fees_path }
          plugin.pathname = root
          plugin.activity = {
            :class_name => :'refinery/fees/fee'
          }
          plugin.always_allow_access = false
          plugin.dashboard = false

        end
      end

      config.after_initialize do
        Refinery.register_extension(Refinery::Fees)
      end
    end
  end
end
