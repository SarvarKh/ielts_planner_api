class RemoveListeningCorrectAnswerFromResults < ActiveRecord::Migration[6.1]
  def change
    remove_column :results, :listening_correct_answer, :integer
  end
end
