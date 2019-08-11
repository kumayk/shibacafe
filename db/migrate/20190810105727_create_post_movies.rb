class CreatePostMovies < ActiveRecord::Migration[5.2]
  def change
    create_table :post_movies do |t|
      t.integer  :user_id
      t.string   :title
      t.text     :caption

      t.timestamps
    end
  end
end
