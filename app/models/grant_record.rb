class GrantRecord < ActiveRecord::Base

  belongs_to :grantmaker

  attr_accessible :amount, :ask_status, :fiscal_year, :funding_type, :grantmaker_id, :notes, :notification_date, :organization_id, :program, :request_type
end
