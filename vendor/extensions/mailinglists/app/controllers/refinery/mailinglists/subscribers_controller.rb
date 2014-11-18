require 'net/http'

module Refinery
  module Mailinglists
    class SubscribersController < ::ApplicationController
      before_filter :find_page, :only => [:create, :new]

      def index
        redirect_to :action => 'new'
      end

      def thank_you
        @page = Refinery::Page.find_by_link_url('/mailinglists/thank_you', :include => [:parts])
      end

      def new
        @subscriber = Subscriber.new
      end

      def create
        @subscriber = Subscriber.new(params[:subscriber])
        subscriber = Subscriber.find_by_email(@subscriber[:email])
        # if subscriber not exits we create new and subcribe him where he want
        subscribed_general = false
        subscribed_events = false
        if subscriber.nil? and @subscriber.valid?
          if @subscriber.spam?
            subscribed_events = true # ignore spam
          else
            subscribed_general = subscribe(@subscriber, 'general') if @subscriber[:general]
            subscribed_events = subscribe(@subscriber, 'events') if @subscriber[:events]

            Mailer.notification(@subscriber, request).deliver if (subscribed_general or subscribed_events)
          end
        else
          if @subscriber.spam?
            subscribed_events = true # ignore spam
          else
            # otherwise we try subscribe or unsubscribe him from what he want
            if @subscriber[:general]
              if subscriber[:general]
                unsubscribe(subscriber, 'general') and return
              else
                subscribed_general = subscribe(subscriber, 'general')
              end
            elsif @subscriber[:events]
              if subscriber[:events]
                unsubscribe(subscriber, 'events') and return
              else
                subscribed_events = subscribe(subscriber, 'events')
              end
            end
          end
        end

        if subscribed_events or subscribed_general
          flash[:success] = 'Subscription success.'
          redirect_to refinery.thank_you_mailinglists_subscribers_path
        else
          raise 'Something is bad.'
        end

        rescue
          logger.warn "There was an error with email (#{@subscriber.email}). \n#{$!.message}\n"
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
        uri = URI.parse(url)
        result = Net::HTTP.start(uri.host, use_ssl: uri.scheme == 'https', verify_mode: OpenSSL::SSL::VERIFY_NONE) do |http|
          http.post(uri.request_uri, URI.encode_www_form({ 'email' => @subscriber.email }))
        end
          
        return result.code_type == Net::HTTPOK

        rescue => e
          logger.warn "There was an error subscribe email (#{@subscriber.email}) to mailinglist (#{url}). \n#{e.message}\n"
          false
      end

      def find_page
        @page = Refinery::Page.find_by_link_url('/mailinglists/new', :include => [:parts])
      end

    end
  end
end
