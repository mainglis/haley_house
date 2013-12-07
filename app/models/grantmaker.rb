class Grantmaker < ActiveRecord::Base
  has_many :grant_records
  attr_accessible :city, :contact_email, :contact_first_name, :contact_last_name, :contact_phone_number, :email, :mission, :name, :notes, :phone, :rank, :state, :street_address, :unsolicited_proposals, :website, :zip_code

  def to_s
    name
  end
  
  def self.ranks
    return [1, 2, 3, 4, 5]
  end

end
