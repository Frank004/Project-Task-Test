class AddSchedulableIdToTaskOccurrences < ActiveRecord::Migration
  def change
    add_column :task_occurrences, :schedulable_id, :integer
    add_column :task_occurrences, :schedulable_type, :string
  end
end
