class Grantmaker < ActiveRecord::Base
  attr_accessible :city, :contact_email, :contact_first_name, :contact_last_name, :contact_phone_number, :email, :mission, :name, :notes, :phone, :rank, :state, :street_address, :unsolicited_proposals, :website, :zip_code
end
