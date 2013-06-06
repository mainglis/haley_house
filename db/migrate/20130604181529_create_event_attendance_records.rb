class CreateEventAttendanceRecords < ActiveRecord::Migration
  def change
    create_table :event_attendance_records do |t|
      t.integer :individual_id
      t.integer :organization_id
      t.integer :event_id

      t.timestamps
    end
  end
end
