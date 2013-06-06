class CreateRolesRosters < ActiveRecord::Migration
  def change
    create_table :roles_rosters do |t|
      t.integer :individual_id
      t.integer :role_id
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
