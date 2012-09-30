module Refinery
  module Mailinglists
    class Subscriber < Refinery::Core::BaseModel
      self.table_name = 'refinery_mailinglists_subscribers'
      acts_as_indexed :fields => [:email]

      attr_accessible :email, :general, :events

      alias_attribute :name, :email

      # Add some validation here if you want to validate the user's input
      # We have validated the first string field for you.
      validates :email, :presence => true,
                        :uniqueness => true,
                        :length => { :in => 6..64 },
                        :format => { :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i }

      scope :ham, :conditions => {:spam => false}
      scope :spam, :conditions => {:spam => true}

      before_validation(:on => :create) { |spammable| spammable.send(:calculate_spam_score) }

      cattr_accessor :spam_words
      self.spam_words = %w{
        -online 4u 4-u acne adipex advicer baccarrat blackjack bllogspot booker buy byob carisoprodol
        casino chatroom cialis coolhu credit-card-debt cwas cyclen cyclobenzaprine orgy
        day-trading debt-consolidation discreetordering duty-free dutyfree equityloans fioricet
        freenet free\s*shipping gambling- hair-loss homefinance holdem incest jrcreations leethal levitra macinstruct
        mortgagequotes nemogs online-gambling ottawavalleyag ownsthis paxil penis pharmacy phentermine
        poker poze pussy ringtones roulette shemale shoes -site slot-machine thorcarlson
        tramadol trim-spa ultram valeofglamorganconservatives viagra vioxx xanax zolus adult
      }

      def ham?
        not spam?
      end

      def ham!
        self.update_attribute(:spam, false)
      end

      def spam!
        self.update_attribute(:spam, true)
      end

      protected

        def score_for_previous_submissions
          current_score = 0

          self.class.find(:all, :conditions => {:email => self[:email]}).each do |i|
            if i.spam?
              current_score -= 1
            else
              current_score += 1
            end
          end

          current_score
        end

        def score_for_spam_words
          current_score = 0

          spam_words.each do |word|
            regex = /#{word}/i
            if self[:email] =~ regex
              current_score -= 1
            end
          end

          current_score
        end

        def calculate_spam_score
          score = 0
          score += score_for_previous_submissions
          score += score_for_spam_words
          self.spam = (score < 0)

          logger.info("spam score was #{score}")

          true
        end
    end

  end
end
