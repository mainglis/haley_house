class Organization < ActiveRecord::Base
  attr_accessible :city, :mission, :name, :program, :state, :street_address, :website, :zip, :contact_phone_number, :contact_email, :contact_first_name, :contact_last_name
end
