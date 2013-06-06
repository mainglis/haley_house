class CreateDeadlines < ActiveRecord::Migration
  def change
    create_table :deadlines do |t|
      t.integer :grant_record_id
      t.string :type
      t.date :date
      t.text :notes

      t.timestamps
    end
  end
end
