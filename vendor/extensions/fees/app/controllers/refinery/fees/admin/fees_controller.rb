module Refinery
  module Fees
    module Admin
      class FeesController < ::Refinery::AdminController

        before_filter :users_transactions, :only => [:new, :create, :update]

        crudify :'refinery/fees/fee', :xhr_paging => true

        LIMIT_UNPAIRED = 100
        TITLE_MAX_MESSAGE_LENGTH = 64

        def index
          @my_fees = Fee.mine(params[:page], current_refinery_user.id)
          @all_fees = Fee.from_all(params[:page])


          @year_fees = ::Refinery::Fees::Fee.where(:year => 2012).order(:month, :user_id)
          merge_transactions

          render(:partial => 'fees') if request.xhr?
        end

        def show
          @fee = Fee.find_by_id(params[:id])
        end

        protected

        def users_transactions
          @users = ::Refinery::User.where('progressbar_uid IS NOT NULL')
          @transactions = {}
          ::Refinery::Transactions::Transaction.unpaired.limit(LIMIT_UNPAIRED).order('realized_at DESC').each {
            |t|
            @transactions["vs: #{t.vs} -- #{t.message.gsub(/\n/, ' ').truncate(TITLE_MAX_MESSAGE_LENGTH)} - #{t.from_account} - #{t.realized_at} - #{t.amount} #{t.currency}"] = t.id
          }
        end

        def merge_transactions

          transactions = ::Refinery::Transactions::Transaction.income
          transactions = transactions.select('id, vs, amount, currency, realized_at, stamp')
          transactions = transactions.where('id NOT IN (SELECT t2.transaction_id FROM refinery_fees AS t2)')
          transactions = transactions.where('amount > 0')
          transactions = transactions.where('vs IS NOT NULL')
          # transactions = transactions.limit(100)

          transactions.each do |t|
            u = ::Refinery::User.find_by_progressbar_uid(t.vs.to_i)
            if u
              d = Date.parse("#{t.realized_at}")

              Fee.create(
                :transaction_id => t.id,
                :user_id => u.id,
                :amount => t.amount,
                :currency => t.currency,
                :stamp => t.stamp,
                :month => d.month.to_i,
                :year => d.year.to_i
              )
            end
          end

        end


      end
    end
  end
end
