class Individual < ActiveRecord::Base

  has_many :event_attendance_records
	has_many :individual_role_records

  attr_accessible :applied_date, :current_city, :current_street_address, :current_zip, :email, :email_newsletter, 
                  :emergency_contact_city, :emergency_contact_name, :emergency_contact_street_address, :emergency_contact_zip, 
                  :first_name, :inactive_date, :last_name, :mail_newsletter, :permanent_city, :permanent_street_address, 
                  :permanent_zip, :phone_home, :phone_mobile, :phone_mobile, :phone_work, :processed_date, :salutation

  # def to_s
  #   "#{first_name} #{last_name}"
  # end
                  
  def self.import(file)
    CSV.foreach(file.path, :headers => true) do |row|
      individual = find_by_id(row["id"]) || new
      individual.attributes = row.to_hash.slice(*accessible_attributes)
      individual.save!
    end
  end  
end