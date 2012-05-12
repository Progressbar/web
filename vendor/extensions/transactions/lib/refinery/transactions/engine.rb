module Refinery
  module Transactions
    class Engine < Rails::Engine
      include Refinery::Engine
      isolate_namespace Refinery::Transactions

      engine_name :refinery_transactions

      initializer "register refinerycms_transactions plugin" do
        Refinery::Plugin.register do |plugin|
          plugin.name = "transactions"
          plugin.url = proc { Refinery::Core::Engine.routes.url_helpers.transactions_admin_transactions_path }
          plugin.pathname = root
          plugin.activity = {
            :class_name => :'refinery/transactions/transaction'
          }

        end
      end

      config.after_initialize do
        Refinery.register_extension(Refinery::Transactions)
      end
    end
  end
end
