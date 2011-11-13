class CreateFees < ActiveRecord::Migration
  def self.up
    drop_table :fees if ::Fee.table_exists?
    
    create_table :fees do |t|
      t.string :from_account, :null => false
      t.integer :vs, :null => false
      t.decimal :amount, :precision => 8, :scale => 2, :null => false
      t.string :currency, :null => false, :default => 'eur'
      t.integer :month, :null => false
      t.integer :year, :null => false
      t.string :stamp, :null => false
      t.text :message

      t.references :user

      t.timestamps
    end

    add_index :fees, :id
    add_index :fees, :stamp
  end

  def self.down
    UserPlugin.destroy_all({:name => "fees"})

    drop_table :fees

  end
end