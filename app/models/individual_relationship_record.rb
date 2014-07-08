class IndividualRelationshipRecord < ActiveRecord::Base
  attr_accessible :left_individual, :relationship, :right_individual

  belongs_to :left_individual, :class_name => 'Individual'
  belongs_to :right_individual, :class_name => 'Individual'

  validates_presence_of :left_individual, :right_individual, :relationship
end
