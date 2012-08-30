module Refinery
  module Mailinglists
    module Admin
      class SubscribersController < Refinery::AdminController

        crudify :'refinery/mailinglists/subscriber',
                :title_attribute => 'email',
                :order => 'created_at DESC'

        def index
          unless searching?
            find_all_subscribers
          else
            search_all_subscribers
          end

          @grouped_subscribers = group_by_date(@subscribers)
        end

      end
    end
  end
end
