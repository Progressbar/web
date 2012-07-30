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
        # if subscriber not exits we create new and subcribe him where he want
        subscribed_general = false
        subscribed_events = false
        if subscriber.nil?
          subscribed_general = subscribe(@mailinglist, 'general') if @mailinglist[:general]
          subscribed_events = subscribe(@mailinglist, 'events') if @mailinglist[:events]

          Mailer.notification(@mailinglist, request).deliver if (subscribed_general or subscribed_events)
        else
          # otherwise we try subscribe or unsubscribe him from what he want
          if @mailinglist[:general]
            if subscriber[:general]
              unsubscribe(subscriber, 'general') and return
            else
              subscribed_general = subscribe(subscriber, 'general')
            end
          elsif @mailinglist[:events]
            if subscriber[:events]
              unsubscribe(subscriber, 'events') and return
            else
              subscribed_events = subscribe(subscriber, 'events')
            end
          end
        end

        if subscribed_events or subscribed_general
          flash[:success] = 'Subscription success.'
          redirect_to refinery.thank_you_mailinglists_mailinglists_path
        else
          raise 'Something is bad.'
        end

        rescue
          logger.warn "There was an error with email (#{@mailinglist.email}). \n#{$!.message}\n"
          flash[:error] = "Houston we have a problem. If problem persist please contact us on email: #{Refinery::Setting.get(:site_email)} ."
          render :action => 'new'
      end

      protected

      def unsubscribe(subscriber, mailinglist)
        subscriber.update_attributes(mailinglist.to_sym => false)
        redirect_to Refinery::Setting.get("#{mailinglist}_mailing_list_unsubscribe_url".to_sym)
      end

      def subscribe(subscriber, mailinglist)
        subscribed = self.send_subscribe_request(Refinery::Setting.get("#{mailinglist}_mailing_list_subscribe_url".to_sym))
        subscriber.update_attributes(mailinglist.to_sym => true) if subscribed
        subscribed
      end

      def send_subscribe_request(url)
        response = false
        begin
          request = Net::HTTP.post_form(URI.parse(url), {'email' => @mailinglist.email})
          response = true
        rescue => e
          logger.warn "There was an error subscribe email (#{@mailinglist.email}) to mailinglist (#{url}). \n#{e.message}\n"
        end

        response
      end

      def find_page
        @page = Refinery::Page.find_by_link_url('/mailinglists/new', :include => [:parts])
      end

    end
  end
end
