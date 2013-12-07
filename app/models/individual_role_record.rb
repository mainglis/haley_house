class IndividualRoleRecord < ActiveRecord::Base
  attr_accessible :end_date, :individual_id, :role_id, :start_date

  belongs_to :role
  belongs_to :individual
end
