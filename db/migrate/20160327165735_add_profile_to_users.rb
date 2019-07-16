class AddProfileToUsers < ActiveRecord::Migration
  def change
    add_column :users, :username, :string
    add_column :users, :klasa, :string
    add_column :users, :bio, :text
  end
end
