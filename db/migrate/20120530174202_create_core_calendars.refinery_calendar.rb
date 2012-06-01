# This migration comes from refinery_calendar (originally 1)
class CreateCoreCalendars < ActiveRecord::Migration
  def self.up
    create_table :refinery_calendar_core_calendars do |t|
      t.string :app
      t.timestamps
    end
  end
  def self.down
    drop_table :refinery_calendar_core_calendars
  end
end

