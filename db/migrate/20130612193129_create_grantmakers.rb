class CreateGrantmakers < ActiveRecord::Migration
  def change
    create_table :grantmakers do |t|
      t.string :name
      t.integer :rank
      t.boolean :unsolicited_proposals
      t.text :mission
      t.string :website
      t.string :street_address
      t.string :city
      t.string :state
      t.string :zip_code
      t.string :phone
      t.string :email
      t.string :contact_first_name
      t.string :contact_last_name
      t.string :contact_email
      t.string :contact_phone_number
      t.text :notes

      t.timestamps
    end
  end
end
