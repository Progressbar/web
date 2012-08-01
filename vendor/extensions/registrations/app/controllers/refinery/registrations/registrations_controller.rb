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
          begin
            Mailer.notification(@registration, request).deliver
          rescue => e
            logger.warn "There was an error delivering the registration notification.\n#{e.message}\n"
          end

          if Registration.column_names.map(&:to_s).include?('email')
            begin
              Mailer.confirmation(@registration, request).deliver
            rescue => e
              logger.warn "There was an error delivering the registration confirmation:\n#{e.message}\n"
            end
          else
            logger.warn "Please add an 'email' field to Registration if you wish to send confirmation emails when forms are submitted."
          end

          redirect_to refinery.thank_you_registrations_registrations_path
        else
          render :action => 'index'
        end
      end

    protected

      def find_page
        @page = Refinery::Page.find_by_link_url('/join-us', :include => [:parts])
      end

    end
  end
end
