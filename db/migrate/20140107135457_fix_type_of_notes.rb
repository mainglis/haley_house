class FixTypeOfNotes < ActiveRecord::Migration
  def up
	change_column :notes, :note, :text
  end

  def down
	change_column :notes, :note, :string
  end
end
