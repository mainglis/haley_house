class Role < ActiveRecord::Base
  attr_accessible :description, :name

  def to_s
    name
  end
end
