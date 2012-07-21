module Refinery
  module Fees
    module Admin
      class FeesController < ::Refinery::AdminController

        before_filter :users_transactions

        crudify :'refinery/fees/fee', :xhr_paging => true

        def index
          @my_fees = Fee.mine(params[:page], current_refinery_user.id)
          @all_fees = Fee.from_all(params[:page])
          
          self.merge_transactions

          render(:partial => 'fees') if request.xhr?
        end

        def show
          @fee = Fee.find_by_id(params[:id])
        end


        def users_transactions
          @users = ::Refinery::User.where('progressbar_uid IS NOT NULL')
          @transactions = {}
          ::Refinery::Transactions::Transaction.income.limit(100).order('realized_at DESC').each {
            |t|
            @transactions["vs: #{t.vs} -- #{t.message.gsub(/\n/, ' ').truncate(64)} - #{t.from_account} - #{t.realized_at} - #{t.amount} #{t.currency}"] = t.id
          }
        end

        protected
        def merge_transactions

          transactions = ::Refinery::Transactions::Transaction.income
          transactions = transactions.where('id NOT IN (SELECT t2.transaction_id FROM refinery_fees AS t2)')
          transactions = transactions.where('amount > 0')
          transactions = transactions.where('vs IS NOT NULL')
          transactions = transactions.select('id, vs, amount, currency, realized_at, stamp')
          transactions = transactions.limit(100)

          transactions.each do |t|
            u = ::Refinery::User.where(:progressbar_uid => t.vs).first
            d = Date.parse("#{t.realized_at}")
            if u
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