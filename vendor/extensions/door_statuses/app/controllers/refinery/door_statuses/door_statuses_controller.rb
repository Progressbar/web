module Refinery
  module DoorStatuses
    class DoorStatusesController < ::ApiController

      def index
      	render :json => DoorStatus.last
      end

      def new
      	created = false

      	if params[:door_status].present?
	        @door_status = DoorStatus.new(params[:door_status])

	        created = @door_status.save ? true : false
  	    end

        render :json => {:created => created}
      end

    end
  end
end
