class RemoveDueDateFromUsers < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :due_date, :date
  end
end
