module Refinery
  module DoorStatuses
    class DoorStatus < Refinery::Core::BaseModel
      self.table_name = 'refinery_door_statuses'

      attr_accessible :is_open

    end
  end
end
