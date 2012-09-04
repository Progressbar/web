module Refinery
  module Registrations
    class RegistrationsController < ::ApplicationController

      before_filter :find_page, :only => [:create, :index]

      def index
        @registration = Registration.new
      end

      def thank_you
        @page = Refinery::Page.find_by_link_url("/join-us/thank_you", :include => [:parts])
      end

      def create
        @registration = Registration.new(params[:registration])

        if @registration.save
          p 'xxx'*80
          begin
            p 'yyy'*80
            Mailer.notification(@registration, request).deliver
            Mailer.confirmation(@registration, request).deliver
          rescue => e
              logger.warn "There was an error delivering the registration notification/confirmation:\n#{e.message}\n"
          end
          
          redirect_to refinery.thank_you_registrations_registrations_path
        else
          flash[:error] = t('some_error_happen_on_registration_html',
            :scope => 'refinery.registration',
            :contact_email => Refinery::Setting.get(:site_email))
         render :action => 'index'
        end
      end

    protected

      def find_page
        @page = Refinery::Page.find("join-us", :include => [:parts])
      end

    end
  end
end
