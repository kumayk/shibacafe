class ImageComments < ActiveRecord::Migration[5.2]
  def change
  	drop_table :image_comments
  end
end
