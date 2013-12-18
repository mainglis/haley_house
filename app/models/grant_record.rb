class GrantRecord < ActiveRecord::Base
  belongs_to :grantmaker
  has_many :deadlines
  
  attr_accessible :amount, :ask_status, :fiscal_year, :funding_type, :grantmaker_id, :notes, :notification_date, :organization_id, :program, :request_type

  ASK_STATUSES = %w{submitting pending received rejected accepted}

  validate :ask_status_must_be_valid

  def ask_status_must_be_valid
    if ask_status.present? && ASK_STATUSES.exclude?(ask_status)
      errors.add(:ask_status, "must be one of the following: #{ASK_STATUSES.join(', ')}")
    end
  end
end
