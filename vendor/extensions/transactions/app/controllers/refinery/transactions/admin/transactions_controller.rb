module Refinery
  module Transactions
    module Admin
      class TransactionsController < ::Refinery::AdminController

        crudify :'refinery/transactions/transaction',
          :title_attribute => 'realized_at', :xhr_paging => true

        def income
          search_all_transactions if searching?
          paginate_all_transactions

          @transactions = @transactions.income

          render_transactions
        end

        def outcome
          search_all_transactions if searching?
          paginate_all_transactions

          @transactions = @transactions.outcome

          render_transactions
        end

        def search_all_transactions
          find_all_transactions
          @transactions = @transactions.with_query(params[:search])

          render_transactions
        end

        def render_transactions
          if request.xhr?
            render :text => render_to_string(:partial => 'transactions', :layout => false).html_safe, :layout => 'refinery/flash'
          else
            render :action => 'index'
          end
        end

      end
    end
  end
end
