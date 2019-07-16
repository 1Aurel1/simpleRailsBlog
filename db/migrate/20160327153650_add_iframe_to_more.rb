class AddIframeToMore < ActiveRecord::Migration
  def change
    add_column :mores, :iframe2, :text
  end
end
