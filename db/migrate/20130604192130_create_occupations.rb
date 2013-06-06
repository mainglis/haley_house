class CreateOccupations < ActiveRecord::Migration
  def change
    create_table :occupations do |t|
      t.integer :individual_id
      t.string :sector
      t.string :title
      t.string :employer_name
      t.string :employer_street_address
      t.string :employer_city
      t.string :employer_zip
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
