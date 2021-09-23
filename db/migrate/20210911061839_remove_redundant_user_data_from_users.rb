class RemoveRedundantUserDataFromUsers < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :occupation, :string
    remove_column :users, :photo, :text
    remove_column :users, :age, :integer
    remove_column :users, :gender, :string
  end
end
