module Refinery
  module DoorStatuses
    class DoorStatus < Refinery::Core::BaseModel
      self.table_name = 'refinery_door_statuses'

      attr_accessible :is_open, :position
  
      # def message was created automatically because you didn't specify a text field
      # when you ran the refinery:form generator. <3 <3 Refinery CMS.
      def message
        "Override def message in vendor/extensions/door_statuses/app/models/refinery/door_statuses/door_status.rb"
      end

      # Add some validation here if you want to validate the user's input

      # def name was created automatically because you didn't specify a string field
      # when you ran the refinery:form generator. <3 <3 Refinery CMS.
      def name
        "Override def name in vendor/extensions/door_statuses/app/models/refinery/door_statuses/door_status.rb"
      end
    end
  end
end
