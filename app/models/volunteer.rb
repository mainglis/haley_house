class Volunteer < ActiveRecord::Base
  attr_accessible :current_city, :current_street_address, :email_address, :first_name, :last_name, :zip_code
end
