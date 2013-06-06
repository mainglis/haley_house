class CreateIndividuals < ActiveRecord::Migration
  def change
    create_table :individuals do |t|
      t.string :first_name
      t.string :last_name
      t.string :salutation
      t.string :email
      t.string :current_street_address
      t.string :current_city
      t.string :current_zip
      t.string :permanent_street_address
      t.string :permanent_city
      t.string :permanent_zip
      t.string :phone_mobile
      t.string :phone_work
      t.string :phone_home
      t.string :phone_mobile
      t.string :emergency_contact_name
      t.string :emergency_contact_street_address
      t.string :emergency_contact_city
      t.string :emergency_contact_zip
      t.boolean :email_newsletter
      t.boolean :mail_newsletter
      t.date :applied_date
      t.date :processed_date
      t.date :inactive_date

      t.timestamps
    end
  end
end
