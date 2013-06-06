class Event < ActiveRecord::Base
  attr_accessible :description, :end_datetime, :name, :start_datetime
end
