# This migration comes from refinery_registrations (originally 1)
class CreateRegistrations < ActiveRecord::Migration

  def self.up
    create_table :refinery_registrations do |t|
      t.string :username, :null => false
      t.string :email, :null => false
      t.text :message, :null => false
      t.string :state, :null => false, :default => 'unmoderated'

      t.timestamps
    end
    
    add_index :refinery_registrations, :id

    if (seed = Rails.root.join('db', 'seeds', 'registrations.rb')).exist?
      load(seed)
    end
  end

  def self.down
    if defined?(::Refinery::UserPlugin)
      ::Refinery::UserPlugin.destroy_all({:name => "registrations"})
    end

    if defined?(::Refinery::Page)
      ::Refinery::Page.delete_all({:link_url => "/registrations"})
    end

    drop_table :refinery_registrations
  end

end
