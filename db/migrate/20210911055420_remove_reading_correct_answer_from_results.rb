class RemoveReadingCorrectAnswerFromResults < ActiveRecord::Migration[6.1]
  def change
    remove_column :results, :reading_correct_answer, :integer
  end
end
