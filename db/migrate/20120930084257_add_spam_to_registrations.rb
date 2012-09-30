class AddSpamToRegistrations < ActiveRecord::Migration
  def change
    add_column :refinery_registrations, :spam, :boolean
  end
end
