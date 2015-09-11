class ChangeTypeOfPriority < ActiveRecord::Migration
  def change
  	remove_column :tasks, :priority
  	add_column :tasks, :priority, :integer
  end
end
