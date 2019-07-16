class AddAttachmentMoreImageToMores < ActiveRecord::Migration
  def self.up
    change_table :mores do |t|
      t.attachment :more_image
    end
  end

  def self.down
    remove_attachment :mores, :more_image
  end
end
