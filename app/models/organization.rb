class Organization < ActiveRecord::Base
  validates :name, :presence => true
  validates :zip, :length => { :is => 5 }

  attr_accessible :city, :mission, :name, :program, :state, :street_address, :website, :zip, :contact_phone_number, :contact_email, :contact_first_name, :contact_last_name

  def to_s
    self.name
  end

end

