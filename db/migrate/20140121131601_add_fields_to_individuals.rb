class AddFieldsToIndividuals < ActiveRecord::Migration
  def change
    add_column :individuals, :current_apartment_number, :string
    add_column :individuals, :organization, :string
  end
end
