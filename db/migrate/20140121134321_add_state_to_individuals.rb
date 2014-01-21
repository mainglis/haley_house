class AddStateToIndividuals < ActiveRecord::Migration
  def change
    add_column :individuals, :current_state, :string
  end
end
