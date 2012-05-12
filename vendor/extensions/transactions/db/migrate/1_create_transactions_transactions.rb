class CreateTransactionsTransactions < ActiveRecord::Migration

  def up
    create_table :refinery_transactions do |t|
      t.string :primary_type, :null => false
      t.string :from_account
      t.string :to_account
      t.decimal :amount, :precision => 8, :scale => 2, :null => false
      t.string :currency, :null => false, :default => 'eur'
      t.integer :vs
      t.string :custom_type
      t.datetime :realized_at, :null => false

      t.text :message
      t.text :raw

      t.string :stamp

      t.timestamps
    end

  end

  def down
    if defined?(::Refinery::UserPlugin)
      ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-transactions"})
    end

    if defined?(::Refinery::Page)
      ::Refinery::Page.delete_all({:link_url => "/transactions/transactions"})
    end

    drop_table :refinery_transactions

  end

end
