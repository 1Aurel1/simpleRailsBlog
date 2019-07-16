class AddAttachmentBackgroudImageToUsers < ActiveRecord::Migration
  def self.up
    change_table :users do |t|
      t.attachment :backgroud_image
    end
  end

  def self.down
    remove_attachment :users, :backgroud_image
  end
end
