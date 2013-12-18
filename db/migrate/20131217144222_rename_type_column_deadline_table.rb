class RenameTypeColumnDeadlineTable < ActiveRecord::Migration
  def up
  	rename_column :deadlines, :type, :deadline_type
  end

  def down
  end
end
