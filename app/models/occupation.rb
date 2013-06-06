class Occupation < ActiveRecord::Base
  attr_accessible :employer_city, :employer_name, :employer_street_address, :employer_zip, :end_date, :individual_id, :sector, :start_date, :title
end
