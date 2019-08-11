class RemoveCheckFromImageComments < ActiveRecord::Migration[5.2]
  def change
    remove_column :image_comments, :check, :boolean
  end
end
