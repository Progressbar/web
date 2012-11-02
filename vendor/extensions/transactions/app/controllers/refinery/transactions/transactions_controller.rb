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


      def help
        render :json => {'transaction' => Transaction.new._accessible_attributes[:default].to_a}
      end

      def create
        ::I18n.locale = :en

        response = { 'status' => false }
        if params[:transaction].present?
          ptrans = params[:transaction]
          ptrans[:realized_at] = Date.parse(ptrans[:realized_at].to_s) rescue nil

          begin
            trans = Transaction.new(ptrans)
            if trans.valid?
              response['status'] = trans.save!
              match_fee(trans) if trans[:vs].present? && trans[:vs].to_i > 10165 # magic
            else
              response['errors'] = trans.errors
            end
          rescue
            response = $!.message
          end
        end

        render :json => response.to_json
      end

      private

      # localhost:3000/en/api/transaction/new?&transaction[primary_type]=income&transaction[amount]=100&transaction[realized_at]=yesterday&transaction[to_account]=progressbar
      def match_fee(transaction)
        user = ::Refinery::User.find_by_progressbar_uid(transaction.vs.to_i)

        if user
          date = Date.parse("#{transaction.realized_at}")
          month = params[:fee][:month] rescue date.month.to_i
          year = params[:fee][:year] rescue date.year.to_i

          ::Refinery::Fees::Fee.create(
            :transaction_id => transaction.id,
            :user_id => user.id,
            :amount => transaction.amount,
            :message => transaction.message,
            :currency => transaction.currency,
            :stamp => transaction.stamp,
            :month => month,
            :year => year
          )

          transaction[:custom_type] = 'fee'
          transaction.save
        end

        rescue => e
          logger.warn "There was an error matching fee with transaction #{transaction.id}.\n#{e.message}\n"
      end

    end
  end
end
