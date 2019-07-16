class CreateMores < ActiveRecord::Migration
  def change
    create_table :mores do |t|
      t.string :title2
      t.text :content2
      t.belongs_to :post, index: true

      t.timestamps
    end
  end
end
