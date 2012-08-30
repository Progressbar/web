class CreateMailinglists < ActiveRecord::Migration

  def self.up

    create_table ::Refinery::Mailinglists::Subscriber.table_name do |t|
      t.string :email
      t.boolean :general, :default => false
      t.boolean :events, :default => true

      t.timestamps
    end

    add_index ::Refinery::Mailinglists::Subscriber.table_name, :id
    add_index ::Refinery::Mailinglists::Subscriber.table_name, :email, :unique => true

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

    drop_table ::Refinery::Mailinglists::Subscriber.table_name
  end

end
