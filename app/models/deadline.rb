class Deadline < ActiveRecord::Base

  belongs_to :grant_record

  attr_accessible :date, :grant_record_id, :notes, :deadline_type

  DEADLINE_TYPES = %w{initial_conversation loi full_proposal interim_report final_report}

  validate :deadline_type_must_be_valid

  def deadline_type_must_be_valid
    if deadline_type.present? && DEADLINE_TYPES.exclude?(deadline_type)
      errors.add(:deadline_type, "must be one of the following: #{DEADLINE_TYPES.join(', ')}")
    end
  end

  def to_s
  	"#{date}, #{deadline_type_string}"
  end

  def deadline_type_string
    deadline_type.humanize
  end

  def self.load_select_array
    DEADLINE_TYPES.map { |type| [type.humanize, type] }
  end
end
