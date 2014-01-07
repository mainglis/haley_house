class Grantmaker < ActiveRecord::Base
  has_many :grant_records

  attr_accessible :city, :contact_email, :contact_first_name, :contact_last_name, :contact_phone_number, :email, :mission, :name, :notes, :phone, :rank, :state, :street_address, :unsolicited_proposals, :website, :zip_code

  def to_s
    self.name
  end

  def last_grant_received
    grant_records.where("ask_status IN ('accepted')").order(:fiscal_year).last
  end

  def last_year_funded
    grant_records.where("ask_status IN ('accepted')").map { |grant_record| grant_record.fiscal_year }.sort.last
  end

  def last_year_funded
    last_grant_received.fiscal_year if last_grant_received
    #last_grant_received.fiscal_year if last_grant_received.exists?
    #last_grant_received && last_grant_received.fiscal_year 
  end

  def last_amount_received
    if last_grant_received 
      last_grant_received.amount
    end
  end

# Grab deadlines from grant_records from this grantmaker that are approaching within the next 6 months 
  def upcoming_deadlines
    deadlines = []
    grant_records.each do |grant_record|
      deadlines += grant_record.deadlines.where(:date => (Date.today)..(Date.today + 6.months))
    end
    return deadlines.join('; ')
  end
  
  def self.ranks
    return [1, 2, 3, 4, 5]
  end

#Alternative way to define has_many :grant_records
  def grant_records
    GrantRecord.where("grantmaker_id = #{self.id}")
  end

end
