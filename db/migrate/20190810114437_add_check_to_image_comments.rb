class AddCheckToImageComments < ActiveRecord::Migration[5.2]
  def change
    add_column :image_comments, :check, :boolean, default: false, null: false
  end
end
