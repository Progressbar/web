module Refinery
  module DoorStatuses
    class Engine < Rails::Engine
      include Refinery::Engine
      isolate_namespace Refinery::DoorStatuses

      engine_name :refinery_door_statuses

      config.after_initialize do
        Refinery.register_extension(Refinery::DoorStatuses)
      end
    end
  end
end
