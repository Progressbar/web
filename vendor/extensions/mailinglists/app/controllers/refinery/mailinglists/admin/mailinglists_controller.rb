module Refinery
  module Mailinglists
    module Admin
      class MailinglistsController < Refinery::AdminController

        crudify :'refinery/mailinglists/mailinglist',
                :title_attribute => "email",
                :order => "created_at DESC"

        def index
          unless searching?
            find_all_mailinglists
          else
            search_all_mailinglists
          end

          @grouped_mailinglists = group_by_date(@mailinglists)
        end

      end
    end
  end
end
