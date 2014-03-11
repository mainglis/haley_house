class Individual < ActiveRecord::Base

  # validates_presence_of :first_name, :last_name, :current_street_address, :current_city, :current_state, :current_zip
  # validates :current_zip, :permanent_zip, :length => { :is => 5 }
  # VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  # validates :email, :format => { :with => VALID_EMAIL_REGEX }

  has_many :event_attendance_records
	has_many :individual_role_records
  has_many :donations
  has_many :notes

  attr_accessible :applied_date, :current_city, :current_street_address, :current_apartment_number, :current_state, :current_zip, :email, :email_newsletter, 
                  :emergency_contact_city, :emergency_contact_name, :emergency_contact_street_address, :emergency_contact_zip, 
                  :first_name, :inactive_date, :last_name, :mail_newsletter, :permanent_city, :permanent_street_address, 
                  :permanent_zip, :phone_home, :phone_mobile, :phone_mobile, :phone_work, :processed_date, :salutation, :organization

  def to_s
    "#{first_name} #{last_name}"
  end
                  
  def self.import(file)
    CSV.foreach(file.path, :headers => true) do |row|
      individual = find_by_id(row["id"]) || new
      individual.attributes = row.to_hash.slice(*accessible_attributes)
      individual.save!
    end
  end

  def donations_summary
    limit = 2
    donations_summary_string = donations.order("date DESC").limit(limit).map { |d| "#{d.amount} (#{d.date.strftime('%-m/%-d')})" }.join(', $')
    donations_summary_string += ', ...' if donations.count > limit
    return '$' + donations_summary_string
  end
end