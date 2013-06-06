class Donation < ActiveRecord::Base
  attr_accessible :amount, :date, :individual_id, :method
end
