class RemoveLevelCurrentFromUsers < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :level_current, :decimal
  end
end
