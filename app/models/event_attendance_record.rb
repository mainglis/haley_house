class EventAttendanceRecord < ActiveRecord::Base
  attr_accessible :event_id, :individual_id, :organization_id
end
