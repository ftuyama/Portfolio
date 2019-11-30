class AddHashedPasswordToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :hashed_password, :string
  end
end
