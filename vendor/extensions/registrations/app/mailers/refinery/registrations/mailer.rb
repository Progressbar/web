module Refinery
  module Registrations
    class Mailer < ActionMailer::Base

      def confirmation(registration, request)
        @registration = registration
        mail :subject  => Refinery::Registrations::Setting.confirmation_subject,
             :to       => registration.email,
             :from     => "\"#{Refinery::Core.site_name}\" <no-reply@#{request.domain}>",
             :reply_to => Refinery::Registrations::Setting.notification_recipients.split(',').first
      end

      def notification(registration, request)
        @registration = registration
        mail :subject  => Refinery::Registrations::Setting.notification_subject,
             :to       => Refinery::Registrations::Setting.notification_recipients,
             :from     => "\"#{Refinery::Core.site_name}\" <no-reply@#{request.domain}>"
      end

      def approved_confirmation(registration, request, user, subscribed_to_mailinglist)
        @registration = registration
        @user = user
        @subscribed_to_mailinglist = subscribed_to_mailinglist
        @new_password_url = refinery.edit_refinery_user_password_url(
          :host => request.host_with_port,
          :reset_password_token => @user.reset_password_token)
        mail :subject  => Refinery::Registrations::Setting.approved_confirmation_subject,
             :to       => registration.email,
             :bcc      => Refinery::Registrations::Setting.notification_recipients.split(',').first,
             :from     => "\"#{Refinery::Core.site_name}\" <no-reply@#{request.domain}>",
             :reply_to => Refinery::Registrations::Setting.notification_recipients.split(',').first
      end

      def rejected_confirmation(registration, request)
        @registration = registration
        mail :subject  => Refinery::Registrations::Setting.rejected_confirmation_subject,
             :to       => registration.email,
             :bcc      => Refinery::Registrations::Setting.notification_recipients.split(',').first,
             :from     => "\"#{Refinery::Core.site_name}\" <no-reply@#{request.domain}>",
             :reply_to => Refinery::Registrations::Setting.notification_recipients.split(',').first
      end

    end
  end
end
