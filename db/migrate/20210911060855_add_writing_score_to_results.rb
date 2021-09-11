class AddWritingScoreToResults < ActiveRecord::Migration[6.1]
  def change
    add_column :results, :writing_score, :decimal
  end
end
