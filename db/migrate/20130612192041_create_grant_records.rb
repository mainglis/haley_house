class CreateGrantRecords < ActiveRecord::Migration
  def change
    create_table :grant_records do |t|
      t.integer :grantmaker_id
      t.integer :organization_id
      t.string :fiscal_year
      t.date :notification_date
      t.string :ask_status
      t.string :request_type
      t.string :funding_type
      t.decimal :amount
      t.string :program
      t.text :notes

      t.timestamps
    end
  end
end
