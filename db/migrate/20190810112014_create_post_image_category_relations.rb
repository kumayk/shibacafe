class CreatePostImageCategoryRelations < ActiveRecord::Migration[5.2]
  def change
    create_table :post_image_category_relations do |t|
      t.integer  :post_image_id
      t.integer  :category_id

      t.timestamps
    end
  end
end
