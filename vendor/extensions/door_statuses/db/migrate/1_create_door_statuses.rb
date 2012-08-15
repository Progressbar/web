class CreateDoorStatuses < ActiveRecord::Migration

  def up
    create_table :refinery_door_statuses do |t|
      t.boolean :is_open, :null => false

      t.timestamps
    end
  end

  def down
    drop_table :refinery_door_statuses
  end

end
