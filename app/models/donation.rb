class Donation < ActiveRecord::Base
  attr_accessible :amount, :date, :individual_id, :method

  belongs_to :individual

  validates_presence_of :amount, :date, :individual

  VALID_METHODS = ['check', 'credit card', 'cash', 'in_kind', 'other']
  validates_inclusion_of :method, :in => VALID_METHODS

  def to_s
  	"$#{amount_string} (#{date_string})"
  end

  def date_string
    date.strftime("%D")
  end

  def amount_string
    amount
  end
end
