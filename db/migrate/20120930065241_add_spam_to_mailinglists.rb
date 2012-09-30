class AddSpamToMailinglists < ActiveRecord::Migration
  def change
    add_column ::Refinery::Mailinglists::Subscriber.table_name, :spam, :boolean
  end
end
