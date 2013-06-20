class CreateIndividualSkillRecords < ActiveRecord::Migration
  def change
    create_table :individual_skill_records do |t|
      t.integer :individual_id
      t.integer :skill_id
      t.date :date_gained

      t.timestamps
    end
  end
end
