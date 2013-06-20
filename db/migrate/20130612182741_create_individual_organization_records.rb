class CreateIndividualOrganizationRecords < ActiveRecord::Migration
  def change
    create_table :individual_organization_records do |t|
      t.integer :individual_id
      t.integer :organization_id
      t.date :start_date

      t.timestamps
    end
  end
end
