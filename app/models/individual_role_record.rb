class IndividualRoleRecord < ActiveRecord::Base
  attr_accessible :end_date, :individual_id, :role_id, :start_date

  belongs_to :role
  belongs_to :individual

  def to_s
  	"#{role.name} (#{s(start_date)} - #{s(end_date)})"
  end

  def s(date)
  	date ? date.strftime("%m/%d/%Y") : ""
  end
end
