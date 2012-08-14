module Refinery
  module DoorStatuses
    class DoorStatusesController < ::ApplicationController

      def update
        @door_status = DoorStatus.new(params[:door_status])

        updated = @door_status.save ? true : false

        render :json => {:updated => 'xxxxxx'}
      end

    end
  end
end
