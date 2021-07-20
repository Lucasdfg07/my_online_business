class AddColumnsToUsers < ActiveRecord::Migration[6.1]
  def change
    add_reference :users, :role, index: true
    add_column :users, :name, :string
    add_column :users, :age, :integer
  end
end
