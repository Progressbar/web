module Refinery
  module Transactions
    class TransactionsController < ::ApplicationController

      def index
        render :text => ''
      end

      def create
        response = nil
#          {'status' => false}
        #    fp = params[:fee]
        #    fp[:user] = User.find_by_progressbar_uid(fp[:vs].to_i)
        #
        #    fee = Fee.new(fp)
        #
        #    if fee.valid?
        #      response['status'] = fee.save!
        #    else
        #      response['errors'] = fee.errors
        #    end

        render :text => 1
      end
    end
  end
end
