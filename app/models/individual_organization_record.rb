class IndividualOrganizationRecord < ActiveRecord::Base
  attr_accessible :individual_id, :organization_id, :start_date
end
