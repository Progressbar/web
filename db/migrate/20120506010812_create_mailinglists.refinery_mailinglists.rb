# This migration comes from refinery_mailinglists (originally 1)
class CreateMailinglists < ActiveRecord::Migration

  def self.up
    create_table :refinery_mailinglists do |t|
      t.string :email
      t.boolean :general, :default => false
      t.boolean :events, :default => true

      t.timestamps
    end

    add_index :refinery_mailinglists, :id

    if (seed = Rails.root.join('db', 'seeds', 'mailinglists.rb')).exist?
      load(seed)
    end
  end

  def self.down
    if defined?(::Refinery::UserPlugin)
      ::Refinery::UserPlugin.destroy_all({:name => "mailinglists"})
    end

    if defined?(::Refinery::Page)
      ::Refinery::Page.delete_all({:link_url => "/mailinglists"})
    end

    drop_table :refinery_mailinglists
  end

end
