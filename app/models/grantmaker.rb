class Grantmaker < ActiveRecord::Base
  has_many :grant_records

  attr_accessible :city, :contact_email, :contact_first_name, :contact_last_name, :contact_phone_number, :email, :mission, :name, :notes, :phone, :rank, :state, :street_address, :unsolicited_proposals, :website, :zip_code

  def to_s
    name
  end

  def years_funded
    grant_records.where("ask_status IN ('accepted', 'pending')").map { |grant_record| grant_record.fiscal_year }.sort
  end

  def last_year_funded
    grant_records.where("ask_status IN ('accepted', 'pending')").map { |grant_record| grant_record.fiscal_year }.sort.last
  end

#Is this how you would call .last on years_funded?
  # def last_year
  #   years_funded.last
  # end
  
#Unsuccessful attempt at defining upcoming_deadlines
  # def upcoming_deadlines
  #    deadlines.where("date >= ?", Date.today).map { |deadline| deadline.date }.sort
  # end
  
  def amount
    grant_records.where("program")
  end

  def program
    grant_records.where("program")
  end

  def self.ranks
    return [1, 2, 3, 4, 5]
  end

end
