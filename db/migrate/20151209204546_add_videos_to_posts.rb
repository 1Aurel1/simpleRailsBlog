class AddVideosToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :iframe, :text
    add_column :posts, :full, :boolean
    add_column :posts, :medium, :boolean
    add_column :posts, :litle, :boolean
  end
end
