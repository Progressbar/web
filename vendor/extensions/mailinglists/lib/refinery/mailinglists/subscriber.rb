require 'refinerycms-settings'
require 'net/http'

module Refinery
  module Mailinglists
    
    class Subscriber

    	def initialize
    		@email = email
    		@mailing_ist_unsubscribe_url = Refinery::Setting.get("#{mailinglist}_mailing_list_unsubscribe_url".to_sym)
    		@mailinglist_subscribe_url = Refinery::Setting.get("#{mailinglist}_mailing_list_subscribe_url".to_sym)
    	end

		def unsubscribe(subscriber, mailinglist)
			subscriber.update_attributes(mailinglist.to_sym => false)
			redirect_to mailing_ist_unsubscribe_url
		end

		def subscribe(subscriber, mailinglist)
			subscribed = self.send_subscribe_request(@mailinglist_subscribe_url))
			subscriber.update_attributes(mailinglist.to_sym => true) if subscribed
			subscribed
		end

		def send_subscribe_request(url)
			response = false
			
			begin
			  response = true if Net::HTTP.post_form(URI.parse(url), {'email' => @email})
			  
			rescue => e
			  logger.warn "There was an error subscribe email (#{@email}) to mailinglist (#{url}). \n#{e.message}\n"
			end

			response
		end

    end
  end
end
