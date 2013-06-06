class CreateOrganizationsRosters < ActiveRecord::Migration
  def change
    create_table :organizations_rosters do |t|
      t.integer :individual_id
      t.integer :organization_id
      t.date :start_date

      t.timestamps
    end
  end
end
