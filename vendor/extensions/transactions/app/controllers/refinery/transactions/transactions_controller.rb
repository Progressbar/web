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
   
        begin
          trans = Transaction.new(ptrans)
          if params[:help].present?
            response['accessible_attributes'] = trans._accessible_attributes
          else
            if trans.valid?
              response['status'] = trans.save!
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
      
    end
  end
end
