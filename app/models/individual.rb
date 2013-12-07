class Individual < ActiveRecord::Base

	has_many :event_attendance_records

  attr_accessible :applied_date, :current_city, :current_street_address, :current_zip, :email, :email_newsletter, 
                  :emergency_contact_city, :emergency_contact_name, :emergency_contact_street_address, :emergency_contact_zip, 
                  :first_name, :inactive_date, :last_name, :mail_newsletter, :permanent_city, :permanent_street_address, 
                  :permanent_zip, :phone_home, :phone_mobile, :phone_mobile, :phone_work, :processed_date, :salutation
                  
  def self.import(file)
    CSV.foreach(file.path, :headers => true) do |row|
      individual = find_by_id(row["id"]) || new
      individual.attributes = row.to_hash.slice(*accessible_attributes)
      individual.save!
    end
  end  
end

def self.import(file)
  spreadsheet = open_spreadsheet(file)
  header = spreadsheet.row(1)
  (2..spreadsheet.last_row).each do |i|
    row = Hash[[header, spreadsheet.row(i)].transpose]
    individual = find_by_id(row["id"]) || new
    individual.attributes = row.to_hash.slice(*accessible_attributes)
    individual.save!
  end
end

def self.open_spreadsheet(file)
  case File.extname(file.original_filename)
  when '.csv' then Csv.new(file.path, nil, :ignore)
  when '.xls' then Excel.new(file.path, nil, :ignore)
  when '.xlsx' then Excelx.new(file.path, nil, :ignore)
  else raise "Unknown file type: #{file.original_filename}"
  end
end

def self.to_csv(options = {})
    CSV.generate(options) do |csv|
      csv << column_names
      all.each do |individual|
        csv << individual.attributes.values_at(*column_names)
      end
    end
  end