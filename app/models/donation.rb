class Donation < ActiveRecord::Base
  attr_accessible :amount, :date, :individual_id, :method

  VALID_METHODS = ['check', 'credit card', 'cash', 'other']
  validates_inclusion_of :method, :in => VALID_METHODS

  def date_string
    date.strftime("%D")
  end

  def amount_string
    amount
  end
end
