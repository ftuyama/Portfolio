class AddFormationAndPositionToUsers < ActiveRecord::Migration
  def change
    add_column :users, :formation, :string
    add_column :users, :position, :string
  end
end
