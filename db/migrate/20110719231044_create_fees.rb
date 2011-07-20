class CreateFees < ActiveRecord::Migration
  def self.up   
    create_table :fees do |t|
      t.string :from_account, :null => false
      t.integer :vs, :null => false
      t.decimal :amount, :precision => 8, :scale => 2, :null => false
      t.string :currency, :null => false, :default => 'eur'
      t.integer :month, :null => false
      t.integer :year, :null => false
      t.text :message
      
      t.references :user, :null => false
      
      t.timestamps
    end
  
    add_index :fees, :id
  end

  def self.down
    UserPlugin.destroy_all({:name => "fees"})

    drop_table :fees
    
  end
end