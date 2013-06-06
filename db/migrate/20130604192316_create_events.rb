class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.string :description
      t.datetime :start_datetime
      t.datetime :end_datetime

      t.timestamps
    end
  end
end
