class AddImageIdToPostImages < ActiveRecord::Migration[5.2]
  def change
    add_column :post_images, :image_id, :text
  end
end
