class Individual < ActiveRecord::Base

	has_many :event_attendance_records

  attr_accessible :applied_date, :current_city, :current_street_address, :current_zip, :email, :email_newsletter, 
                  :emergency_contact_city, :emergency_contact_name, :emergency_contact_street_address, :emergency_contact_zip, 
                  :first_name, :inactive_date, :last_name, :mail_newsletter, :permanent_city, :permanent_street_address, 
                  :permanent_zip, :phone_home, :phone_mobile, :phone_mobile, :phone_work, :processed_date, :salutation
                  
  def self.import(file)
    CSV.foreach(file.path, :headers => true) do |row|
      Individual.create! row.to_hash
    end
  end
end