class CreateProjectTasks < ActiveRecord::Migration
  def change
    create_table :project_tasks do |t|
      t.string :name
      t.text :description 
      t.boolean :completed,   default: false
      t.string :manager
      t.attachment :manager_sign
      t.string :client
      t.attachment :client_sign
      t.timestamps
    end
  end
end
