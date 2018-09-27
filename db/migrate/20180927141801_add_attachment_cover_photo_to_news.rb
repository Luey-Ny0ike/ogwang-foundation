class AddAttachmentCoverPhotoToNews < ActiveRecord::Migration[5.1]
  def self.up
    change_table :news do |t|
      t.attachment :cover_photo
    end
  end

  def self.down
    remove_attachment :news, :cover_photo
  end
end
