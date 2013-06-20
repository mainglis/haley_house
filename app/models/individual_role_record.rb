class IndividualRoleRecord < ActiveRecord::Base
  attr_accessible :end_date, :individual_id, :role_id, :start_date
end
