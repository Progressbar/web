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

    puts 'xxxxxxxxx-------'
    x = ::Refinery::Plugins.active.collect {|p|
      p
    }

          puts ::Refinery::Plugins.active.names
#          puts ::Refinery::Plugins.active.first[:title]
    puts 'xxxxxxxxx'

          @grouped_mailinglists = group_by_date(@mailinglists)
        end



      end
    end
  end
end
