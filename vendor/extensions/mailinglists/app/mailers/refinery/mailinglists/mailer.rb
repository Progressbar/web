module Refinery
  module Mailinglists
    class Mailer < ActionMailer::Base

      def confirmation(mailinglist, request)
        @mailinglist = mailinglist
        mail :subject  => Refinery::Mailinglists::Setting.confirmation_subject,
             :to       => mailinglist.email,
             :from     => "\"#{Refinery::Core.site_name}\" <no-reply@#{request.domain}>",
             :reply_to => Refinery::Mailinglists::Setting.notification_recipients.split(',').first
      end

      def notification(mailinglist, request)
        @mailinglist = mailinglist
        mail :subject  => Refinery::Mailinglists::Setting.notification_subject,
             :to       => Refinery::Mailinglists::Setting.notification_recipients,
             :from     => "\"#{Refinery::Core.site_name}\" <no-reply@#{request.domain}>"
      end

    end
  end
end
