class CreateResults < ActiveRecord::Migration[6.1]
  def change
    create_table :results do |t|
      t.references :user, null: false, foreign_key: true
      t.string :writing_score
      t.string :decimal
      t.decimal :speaking_score
      t.integer :reading_correct_answer
      t.decimal :reading_score
      t.integer :listening_correct_answer
      t.decimal :listening_score
      t.date :passed_date
      t.decimal :overall_score

      t.timestamps
    end
  end
end
