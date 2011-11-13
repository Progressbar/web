class CreateMailingLists < ActiveRecord::Migration

  def self.up
    create_table :mailing_lists do |t|
      t.string :email
      t.boolean :general, :default => false
      t.boolean :events, :default => true
      t.integer :position

      t.timestamps
    end

    add_index :mailing_lists, :id

    load(Rails.root.join('db', 'seeds', 'mailing_lists.rb'))
  end

  def self.down
    if defined?(UserPlugin)
      UserPlugin.destroy_all({:name => "mailing_lists"})
    end

    if defined?(Page)
      Page.delete_all({:link_url => "/mailing_lists"})
    end

    drop_table :mailing_lists
  end

end
