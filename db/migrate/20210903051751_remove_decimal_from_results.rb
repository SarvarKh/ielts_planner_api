class RemoveDecimalFromResults < ActiveRecord::Migration[6.1]
  def change
    remove_column :results, :decimal, :string
  end
end
