# This migration comes from refinery_door_statuses (originally 1)
class CreateDoorStatuses < ActiveRecord::Migration

  def up
    create_table :refinery_door_statuses do |t|
      t.boolean :is_open

      t.timestamps
    end

    add_index :refinery_door_statuses, :id
  end

  def down
    drop_table :refinery_door_statuses
  end

end
