class AddFormationAndPositionToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :formation, :string
    add_column :users, :position, :string
  end
end
