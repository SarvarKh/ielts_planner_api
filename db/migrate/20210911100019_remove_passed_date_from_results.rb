class RemovePassedDateFromResults < ActiveRecord::Migration[6.1]
  def change
    remove_column :results, :passed_date, :date
  end
end
