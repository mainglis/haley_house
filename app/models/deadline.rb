class Deadline < ActiveRecord::Base
  attr_accessible :date, :grant_record_id, :notes, :type
end
