class AddAttachmentAvatarToSharks < ActiveRecord::Migration
  def self.up
    change_table :sharks do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :sharks, :avatar
  end
end
