class CreateDonations < ActiveRecord::Migration
  def change
    create_table :donations do |t|
      t.integer :individual_id
      t.date :date
      t.decimal :amount
      t.string :method

      t.timestamps
    end
  end
end
