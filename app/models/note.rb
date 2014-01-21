class Note < ActiveRecord::Base
  attr_accessible :individual_id, :note

  belongs_to :individual
end
