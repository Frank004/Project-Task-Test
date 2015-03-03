class CreateTaskOccurrences < ActiveRecord::Migration
  def change
    create_table :task_occurrences do |t|
      t.references :project_task, index: true
      t.datetime :date

      t.timestamps null: false
    end
    add_foreign_key :task_occurrences, :project_tasks
  end
end
