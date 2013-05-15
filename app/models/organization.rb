class Organization < ActiveRecord::Base
  attr_accessible :city, :mission, :name, :program, :state, :street_address, :website, :zip
end
