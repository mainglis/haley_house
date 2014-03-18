class Note < ActiveRecord::Base
  attr_accessible :individual_id, :note

  belongs_to :individual

  validates_presence_of :individual, :note

  def to_s
  	note
  end
end
