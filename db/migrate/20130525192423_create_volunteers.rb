class CreateVolunteers < ActiveRecord::Migration
  def change
    create_table :volunteers do |t|
      t.string :first_name
      t.string :last_name
      t.string :email_address
      t.string :current_street_address
      t.string :current_city
      t.string :zip_code

      t.timestamps
    end
  end
end
