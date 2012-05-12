require 'net/http'

module Refinery
  module Registrations
    module Admin
      class RegistrationsController < Refinery::AdminController

        before_filter  :settings

        crudify :'refinery/registrations/registration',
          :title_attribute => "username",
          :order => "created_at DESC"

        def index
          search_all_registrations if searching?
          paginate_all_registrations

          @registrations_state = 'unmoderated'
          @registrations = @registrations.unmoderated

          @grouped_registrations = group_by_date(@registrations)

          render_registrations
        end

        def approved
          search_all_registrations if searching?
          paginate_all_registrations

          @registrations_state = 'approved'
          @registrations = @registrations.approved
          @grouped_registrations = group_by_date(@registrations)

          render_registrations
        end

        def rejected
          search_all_registrations if searching?
          paginate_all_registrations

          @registrations_state = 'rejected'
          @registrations = @registrations.rejected
          @grouped_registrations = group_by_date(@registrations)

          render_registrations
        end

        def approve
          if params[:id].present?
            @registration = Registration.find(params[:id])
            if @registration and @registration.state != 'approved'
              begin
                user = ::Refinery::User.where(:email => @registration.email).first
                password = (0...20).map{ ('a'..'z').to_a[rand(26)] }.join
                if user
                  user.update_attributes({:password => password, :password_confirmation => password})
                else
                  user = ::Refinery::User.create(:username => @registration.username,
                    :email => @registration.email << password,
                    :password => password,
                    :password_confirmation => password)
                end

                user.add_role(:member)
                user.add_role(:refinery)

                begin
                  user.send(:generate_reset_password_token!)
                rescue
                end

                @registration.approve!
                Mailer.approved_confirmation(@registration, user, request).deliver
                subscribe_to_mailinglist(@registration.email)
                flash[:notice] = t('approved', :scope => 'admin.registration', :author => @registration.username)
              rescue
                flash[:error] = "#{$!}"
                logger.warn "There was an error on approve registration.\n#{$!}\n"
              end

            end
          else
            flash[:error] = 'Registration was not found or was approved.'
          end

          rejected
          #          redirect_to refinery.registrations_admin_registrations_path
        end

        def reject
          @subscribed_to_mailinglist = 132431
          if params[:id].present?
            @registration = Registration.find(params[:id])
            #            if @registration and @registration.state == 'unmoderated'
            begin
              @registration.reject!
              u = ::Refinery::User.where(:email => @registration.email).first
              if u
                u.roles = []
                u.plugins = []
              end
              Mailer.rejected_confirmation(@registration, request).deliver
              flash[:notice] = t('rejected', :scope => 'admin.registration', :author => @registration.username)
            rescue
              logger.warn "There was an error on reject registration.\n#{$!}\n"
            end
          end

          approved
          #          redirect_to refinery.registrations_admin_registrations_path
        end

        protected

        def settings
          @settings = Refinery::Setting.where('name LIKE "registration_%"')
        end

        def subscribe_to_mailinglist(email)
          subscriber = Refinery::Mailinglists::Mailinglist.find_by_email(email)
          if subscriber.nil? or !subscriber[:general]
            begin
              response = Net::HTTP.post_form(
                URI.parse(Refinery::Setting.find_or_set(
                    :general_mailing_list_subscribe_url,
                    'http://lists.progressbar.sk/mailman/subscribe/general-discussion')
                ), {'email' => email})

              if subscriber.nil?
                Refinery::Mailinglists::Mailinglist.create({:email => email, :general => true})
              else
                subscriber.update_attributes({:general => true})
              end
              @subscribed_to_mailinglist = true
            rescue => e
              logger.warn "There was an error subscribe email (#{email}) to mailinglists. \n#{e.message}\n"
            end
          end
        end


        def render_registrations
          if request.xhr?
            render :text => render_to_string(:partial => 'registrations', :layout => false).html_safe, :layout => 'refinery/flash'
          else
            render :action => 'index'
          end
        end

      end
    end
  end
end
