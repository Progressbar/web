class CreateRegistrations < ActiveRecord::Migration

  def self.up
    # in devel
    drop_table :registrations if ::Registration.table_exists? && 1 == 1
    
    create_table :registrations do |t|
      t.string :username, :null => false
      t.string :email, :null => false
      t.text :personal_info, :null => false
      t.string :state, :null => false, :default => 'unmoderated'
      
      t.integer :position
      t.boolean  :spam, :default => false

      t.timestamps
    end

    add_index :registrations, :id
    add_index :registrations, :email

    load(Rails.root.join('db', 'seeds', 'registrations.rb'))
  end

  def self.down
    if defined?(UserPlugin)
      UserPlugin.destroy_all({:name => "registrations"})
    end

    if defined?(Page)
      Page.delete_all({:link_url => "/registrations"})
    end

    drop_table :registrations
  end

end
