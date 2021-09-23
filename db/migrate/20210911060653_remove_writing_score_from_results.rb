class RemoveWritingScoreFromResults < ActiveRecord::Migration[6.1]
  def change
    remove_column :results, :writing_score, :string
  end
end
