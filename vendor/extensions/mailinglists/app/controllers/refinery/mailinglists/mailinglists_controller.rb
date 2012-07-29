require 'net/http'

module Refinery
  module Mailinglists
    class MailinglistsController < ::ApplicationController
      before_filter :find_page, :only => [:create, :new]

      def index
        redirect_to :action => "new"
      end

      def thank_you
        @page = Refinery::Page.find_by_link_url("/mailinglists/thank_you", :include => [:parts])
      end

      def new
        @mailinglist = Mailinglist.new
      end

      def create
        @mailinglist = Mailinglist.new(params[:mailinglist])
        subscriber = Mailinglist.find_by_email(@mailinglist[:email])
        # if subscriber not exits we create new and subcribe him where they want
        subscribed_general = false
        subscribed_events = false
        if subscriber.nil? and @mailinglist.valid?
          subscribed_general = subscribe(subscriber, 'general') if @mailinglist.general
          subscribed_events = subscribe(subscriber, 'events') if @mailinglist.events

          if subscribed_general or subscribed_events
            if @mailinglist.save
              begin
                Mailer.notification(@mailinglist, request).deliver
              rescue => e
                logger.warn "There was an error delivering the mailinglist notification.\n#{e.message}\n"
              end
            end
          end
        else
          # otherwise we try subscribe or unsubscribe him from what they want
          if @mailinglist[:general]
            if subscriber[:general]
              unsubscribe(subscriber, 'general')
            else
              subscribed_general = subscribe(subscriber, 'general')
            end
          elsif @mailinglist[:events]
            if subscriber[:events]
              unsubscribe(subscriber, 'events')
            else
              subscribed_events = subscribe(subscriber, 'events')
            end
          end
        end

        if subscribed_events or subscribed_general
          flash[:success] = 'Subscription success.'
          redirect_to refinery.thank_you_mailinglists_mailinglists_path
        else
          flash[:error] = 'Houston we have a problem.'
          render :action => 'new'
        end
      end

      protected

      def unsubscribe(subscriber, mailinglist)
        subscriber.update_attributes(mailinglist.to_sym => false)
        redirect_to Refinery::Setting.get(":#{mailinglist}_mailing_list_unsubscribe_url".to_sym)
      end

      def subscribe(subscriber, mailinglist)
        subscriber.update_attributes(mailinglist.to_sym => true)
        self.send_subscribe_request(Refinery::Setting.get(":#{mailinglist}_mailing_list_subscribe_url".to_sym)
      end

      def send_subscribe_request(url)
        begin
          response = Net::HTTP.post_form(URI.parse(url), {'email' => @mailinglist.email})
        rescue => e
          logger.warn "There was an error subscribe email (#{@mailinglist.email}) to mailinglist (#{url}). \n#{e.message}\n"
        end

        response && response.code == 200
      end

      def find_page
        @page = Refinery::Page.find_by_link_url('/mailinglists/new', :include => [:parts])
      end

    end
  end
end
