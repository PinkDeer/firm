class AddAttachmentImageToFirms < ActiveRecord::Migration[5.1]
  def self.up
    change_table :firms do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :firms, :image
  end
end
