class CreateLikes < ActiveRecord::Migration[5.2]
  def change
    create_table :likes do |t|
      t.integer  :user_id
      t.integer  :post_image_id
      t.integer  :post_movie_id
      t.boolean  :check

      t.timestamps
    end
  end
end
