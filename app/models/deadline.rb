class Deadline < ActiveRecord::Base
  
  belongs_to :grant_record

  attr_accessible :date, :grant_record_id, :notes, :type
  
  TYPES = %w{initial_conversation loi full_proposal interim_report final_report}

  validate :deadline_type_must_be_valid

  def deadline_type_must_be_valid
    if type.present? && TYPES.exclude?(type)
      errors.add(:type, "must be one of the following: #{TYPES.join(', ')}")
    end
  end
end
