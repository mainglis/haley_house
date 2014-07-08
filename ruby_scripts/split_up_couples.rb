couples = Individual.where("last_name LIKE '%&%'")
couples.each do |couple|
  left_first_name = couple.first_name
  last_name = couple.last_name.split(' ').last
  right_first_name = couple.last_name.split('& ').last.delete(" #{last_name}")

  right_individual = couple.dup
  right_individual.update_attributes(:first_name => right_first_name, :last_name => last_name)
  left_individual = couple
  left_individual.last_name = last_name
  IndividualRelationshipRecord.create!(:left_individual => left_individual, :right_individual => right_individual, :relationship => 'partners')
end