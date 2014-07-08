class CreateIndividualRelationshipRecords < ActiveRecord::Migration
  def change
    create_table :individual_relationship_records do |t|
      t.integer :left_individual_id
      t.integer :right_individual_id
      t.string :relationship

      t.timestamps
    end
  end
end
