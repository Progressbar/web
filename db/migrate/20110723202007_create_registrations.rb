class CreateRegistrations < ActiveRecord::Migration
  def self.up
    create_table :registrations do |t|
      t.string :username
      t.string :email
      t.text :message
      
      t.timestamps
    end
    
    add_index :registrations, :username
    add_index :registrations, :email
  end

  def self.down
    drop_table :registrations
  end
end
