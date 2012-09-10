module Refinery
  module Transactions
    class TransactionsController < ::ApiController

      # /transactions/create/
      # ?transaction[stamp]=fd8445c030f2780287cf63209ba4b028
      # &transaction[amount]=20,00
      # &transaction[vs]=10840
      # &transaction[message]=PAVOLLUPTAK
      # &transaction[from_account]=000700-0000001337/001
      # &transaction[month]=02
      # &transaction[year]=12
      # &transaction[currency]=EUR"
      # :from_account, :to_account, :vs, :amount, :currency, :realized_at, :message, :raw, :stamp, :primary_type, :custom_type
      def create
        response = {'status' => false}
        ptrans = params[:transaction]
        ptrans[:realized_at] = Date.parse(ptrans[:realized_at]) if ptrans[:realized_at].present?

        begin
          trans = Transaction.new(ptrans)
          if params[:help].present?
            response['accessible_attributes'] = trans._accessible_attributes
          else
            if trans.valid?
              response['status'] = trans.save!
              merge_fee(trans) if trans[:vs].present?
            else
              response['errors'] = trans.errors
            end
          end
        rescue
          response = $!
        end

        render :text => response.to_json
        # render :text => ptrans
      end

      private
      
      # localhost:3000/en/api/transaction/new?&transaction[primary_type]=income&transaction[amount]=100&transaction[realized_at]=yesterday&transaction[to_account]=progressbar
      def merge_fee(transaction)
        user = ::Refinery::User.find_by_progressbar_uid(transaction.vs.to_i)

        if user
          date = Date.parse("#{transaction.realized_at}")

          ::Refinery::Fees::Fee.create(
            :transaction_id => transaction.id,
            :user_id => user.id,
            :amount => transaction.amount,
            :currency => transaction.currency,
            :stamp => transaction.stamp,
            :month => date.month.to_i,
            :year => date.year.to_i
          )
        end
      end
      
    end
  end
end
