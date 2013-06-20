class CreateIndividualRoleRecords < ActiveRecord::Migration
  def change
    create_table :individual_role_records do |t|
      t.integer :individual_id
      t.integer :role_id
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
