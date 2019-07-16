class AddCategoriesToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :anglisht, :boolean
    add_column :posts, :tik, :boolean
    add_column :posts, :matematik, :boolean
    add_column :posts, :letersi, :boolean
    add_column :posts, :histori, :boolean
  end
end
