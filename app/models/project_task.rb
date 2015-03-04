class ProjectTask < ActiveRecord::Base
acts_as_schedulable occurrences: :task_occurrences
# accepts_nested_attributes_for :schedule
end
