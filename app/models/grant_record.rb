class GrantRecord < ActiveRecord::Base
  validates :grantmaker_id, :organization_id, :amount, :presence => true
  validates :fiscal_year, :length => { :is => 4 }

  belongs_to :grantmaker
  has_many :deadlines
  
  attr_accessible :amount, :ask_status, :fiscal_year, :funding_type, :grantmaker_id, :notes, :notification_date, :organization_id, :program, :request_type

  ASK_STATUSES = %w{submitting pending received rejected accepted}

  validate :ask_status_must_be_valid

  def self.ranks
    return [1, 2, 3, 4, 5]
  end

 def self.program
    return [AiLi, SK, FP]
  end
  
  def ask_status_must_be_valid
    if ask_status.present? && ASK_STATUSES.exclude?(ask_status)
      errors.add(:ask_status, "must be one of the following: #{ASK_STATUSES.join(', ')}")
    end
  end
  def grantmaker_name
    GrantMaker.where("grantmaker_id = #{self.id}")
  end
end