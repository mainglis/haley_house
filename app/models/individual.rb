class Individual < ActiveRecord::Base

  require 'csv'

  # validates_presence_of :first_name, :last_name, :current_street_address, :current_city, :current_state, :current_zip
  # validates :current_zip, :permanent_zip, :length => { :is => 5 }
  # VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  # validates :email, :format => { :with => VALID_EMAIL_REGEX }

  has_many :event_attendance_records
	has_many :individual_role_records
  has_many :donations
  has_many :notes

  attr_accessible :first_name, :last_name, :salutation, :email, :organization, :mail_newsletter, :email_newsletter,
    :current_street_address, :current_apartment_number, :current_city, :current_state, :current_zip, 
    :emergency_contact_name, :emergency_contact_street_address, :emergency_contact_city, :emergency_contact_state, :emergency_contact_zip, 
    :permanent_street_address, :permanent_city, :permanent_state, :permanent_zip,
    :phone_home, :phone_mobile, :phone_work,
    :applied_date, :inactive_date, :processed_date

  def to_s
    "#{first_name} #{last_name}"
  end

  def donations_summary
    limit = 2
    donations_summary_string = donations.order("date DESC").limit(limit).map { |d| "#{d.amount} (#{d.date.strftime('%-m/%-d')})" }.join(', $')
    donations_summary_string += ', ...' if donations.count > limit
    if donations_summary_string.blank?
      return 'None'
    else
      return '$' + donations_summary_string
    end
  end

  def to_organization
    current_street_address = [current_street_address, current_apartment_number].join(', ') unless current_apartment_number.blank?
    Organization.create(
      :name => organization || [first_name, last_name].join(' '),
      :city => current_city || permanent_city || emergency_contact_city,
      # :mission => ,
      # :program => ,
      :state => current_state || permanent_state || emergency_contact_state,
      :street_address => current_street_address || permanent_street_address || emergency_contact_street_address,
      # :website => ,
      :zip => current_zip || permanent_zip || emergency_contact_zip,
      :contact_phone_number => phone_work || phone_home || phone_mobile,
      :contact_email => email,
      :contact_first_name => first_name || emergency_contact_name,
      :contact_last_name => last_name
    )
  end

  def convert_to_organization!
    unless [event_attendance_records, individual_role_records, donations, notes].all? { |child_records| child_records.empty? }
      raise "Cannot convert individual with child records! Individual #{self.id}"
    end
    new_organization = self.to_organization
    if new_organization.save!
      self.destroy
      return new_organization
    end
  end
                  
  def self.import(file)
    CSV.foreach(file.path, :headers => true) do |row|
      individual = find_by_id(row["id"]) || new
      individual.attributes = row.to_hash.slice(*accessible_attributes)
      individual.save!
    end
  end

  # This method imports individuals from a csv file. The header row must contain attribute names.
  def self.import_from_csv(file_name, options = { :file_path => "original_data/" })
    csv_rows = []
    CSV.open(options[:file_path] + file_name, 'r', ?,, ?\r) { |row| csv_rows << row }

    header = csv_rows.first
    csv_rows.delete(header)

    csv_rows.each do |row|
      row_attributes = {}
      notes = []
      i = 0

      row.each do |col|
        attribute_name = header[i]
        if attribute_name.nil?
          raise "Must have a header for every column. header[#{i}] is nil! Value without a header was '#{col}'"
        elsif attribute_name == 'notes'
          notes << col
        else
          row_attributes[attribute_name.to_s.to_sym] = col
        end
        i += 1
      end

      individual = Individual.create!(row_attributes)
      notes.each { |note| individual.notes.create(:note => note) unless note.nil? }
    end
  end
end