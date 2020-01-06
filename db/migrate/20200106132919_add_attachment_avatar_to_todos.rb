class AddAttachmentAvatarToTodos < ActiveRecord::Migration[6.0]
  def self.up
    change_table :todos do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :todos, :avatar
  end
end
