class AddRevistaToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :reviste, :boolean
    add_column :posts, :projekt, :boolean
  end
end
