class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :title
      t.string :priority
      t.text :description
      t.timestamps :due_date
      t.boolean :complete, default: false
      
      t.timestamps null: false
    end
  end
end
