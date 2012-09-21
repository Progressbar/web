class CreateCalendar < ActiveRecord::Migration

  def up

    create_table Refinery::Calendar::Event.table_name, :id => true do |t|
      # default fields
      t.string :name,             :null => false
      t.text :description
      t.datetime :start_date,     :null => false
      t.datetime :end_date,       :null => false

      # extra fields
      t.string :slug,             :null => false
      t.boolean :featured,        :null => false, :default => false
      t.decimal :ticket_price, :precision => 8, :scale => 2
      t.string :ticket_link
      t.string :registration_link
      t.integer :location_id
      t.integer :image_id
      
      # CMS fields
      t.integer :user_id,         :null => false
      t.datetime :published_at,   :null => false
      t.boolean :draft,           :null => false, :default => false

      t.timestamps
    end

    add_index Refinery::Calendar::Event.table_name, :name
    add_index Refinery::Calendar::Event.table_name, :published_at
    add_index Refinery::Calendar::Event.table_name, :start_date
    add_index Refinery::Calendar::Event.table_name, :slug, :unique => true

    create_table Refinery::Calendar::Category.table_name, :id => true do |t|
      t.string :title, :null => false
      t.string :slug,  :null => false

      t.timestamps
    end

    add_index Refinery::Calendar::Category.table_name, :slug, :unique => true

    create_table Refinery::Calendar::Categorization.table_name, :id => true do |t|
      t.integer :calendar_category_id, :null => false
      t.integer :calendar_event_id,    :null => false
    end
    
    create_table Refinery::Calendar::Place.table_name, :id => true do |t|
      # Properties from Thing http://www.schema.org/Thing
      t.string :name, :null => false
      t.string :slug, :null => false
      t.text   :description
      t.string :url
      t.integer :image_id
      t.string :slug

      # Properties from ContactPoint http://www.schema.org/ContactPoint
      t.string :phone
      t.string :email

      # Properties from PostalAddress http://www.schema.org/PostalAddress
      t.string :address_country
      t.string :address_locality
      t.string :address_region
      t.string :postal_code
      t.string :street_address

      # Properties from GeoCoordinates http://schema.org/GeoCoordinates
      t.string :latitude
      t.string :longitude

      t.timestamps
    end

    add_index Refinery::Calendar::Place.table_name, :name
    add_index Refinery::Calendar::Place.table_name, :slug, :unique => true

    create_table Refinery::Calendar::Date.table_name, :id => true do |t|
      t.integer :event_id, :null => false
      t.datetime :date_time, :null => false
    end

  end

  def down
    if defined?(Refinery::UserPlugin)
      Refinery::UserPlugin.destroy_all({:name => "refinerycms_calendar"})
    end

    if defined?(Refinery::Page)
      Refinery::Page.delete_all({:link_url => "/calendar"})
    end

    drop_table Refinery::Calendar::Event.table_name
    drop_table Refinery::Calendar::Category.table_name
    drop_table Refinery::Calendar::Categorization.table_name
    drop_table Refinery::Calendar::Place.table_name
    drop_table Refinery::Calendar::Date.table_name

  end

end