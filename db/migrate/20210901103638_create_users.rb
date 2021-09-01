class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :occupation
      t.text :photo
      t.string :email
      t.string :password
      t.integer :age
      t.string :gender
      t.decimal :level_initial
      t.decimal :level_current
      t.decimal :level_plan
      t.date :due_date

      t.timestamps
    end
  end
end
