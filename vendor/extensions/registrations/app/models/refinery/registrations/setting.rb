# encoding: utf-8

module Refinery
  module Registrations
    class Setting < Refinery::Core::BaseModel

      class << self
        def confirmation_body
          Refinery::Setting.find_or_set(:registration_confirmation_body,
            "Thank you for your registration %name%,\n\nThis email is a receipt to confirm we have received your registration and we'll be in touch shortly.\n\nThanks."
          )
        end

        def confirmation_subject
          Refinery::Setting.find_or_set(:registration_confirmation_subject,
                                        "#{Refinery::Core.site_name} - Thank you for your registration")
        end

        def confirmation_subject=(value)
          Refinery::Setting.set(:registration_confirmation_subject, value)
        end

        def notification_recipients
          Refinery::Setting.find_or_set(:registration_notification_recipients,
                                        (Role[:refinery].users.first.try(:email) if defined?(Role)).to_s)
        end

        def notification_subject
          Refinery::Setting.find_or_set(:registration_notification_subject,
                                        "#{Refinery::Core.site_name} - New registration")
        end

        def approved_confirmation_subject
          Refinery::Setting.find_or_set(:registration_approved_confirmation_subject,
                                        "#{Refinery::Core.site_name} - Registration approved.")
        end

        def rejected_confirmation_subject
          Refinery::Setting.find_or_set(:registration_rejected_confirmation_subject,
                                        "#{Refinery::Core.site_name} - Registration rejected.")
        end

        def approved_confirmation_body
          Refinery::Setting.find_or_set(:registration_approved_confirmation_body,
            "Thank you for your registration %name%,\n\nThis email is a receipt to confirm we have received your registration and we'll be in touch shortly.\n\nThanks."
          )
        end

        def rejected_confirmation_body
          Refinery::Setting.find_or_set(:registration_rejected_confirmation_body,
            "Sorry,\n\nYour registration was rejected."
          )
        end

        def email_footer
          footer = "S pozdravom,\n\nProgressbar tím\ninfo@progressbar.sk\nhttps://www.progressbar.sk"
          footer << " | #{Refinery::Setting.find_or_set(:site_twitter, 'http://twitter.com/progressbarsk')}"
          footer << " | #{Refinery::Setting.find_or_set(:site_facebook, 'http://www.facebook.com/progressbar')}"
          Refinery::Setting.find_or_set(:registration_email_footer, footer)
        end
      end
    end
  end
end
