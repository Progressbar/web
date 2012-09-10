class CreateFeesFees < ActiveRecord::Migration

  def up
    create_table :refinery_fees do |t|
      t.references :user, :null => false
      t.references :transaction, :null => false

      t.decimal :amount, :precision => 8, :scale => 2, :null => false, :default => 20
      t.string :currency, :null => false, :default => 'eur'
      t.integer :month, :null => false
      t.integer :year, :null => false
      t.string :stamp, :null => false
      t.text :message, :null => false, :default => ''

      t.timestamps
    end

    add_index :refinery_fees, :stamp, :unique => true
    add_index :refinery_fees, :user_id, :month, :transaction_id, :unique => true
  end

  def down
    if defined?(::Refinery::UserPlugin)
      ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-fees"})
    end

    drop_table :refinery_fees

  end

end
