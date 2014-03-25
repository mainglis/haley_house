class AddEmergencyContactStateAndPermanentStateToIndividuals < ActiveRecord::Migration
  def change
    add_column :individuals, :emergency_contact_state, :string
    add_column :individuals, :permanent_state, :string
  end
end
