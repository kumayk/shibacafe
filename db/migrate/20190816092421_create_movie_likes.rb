class CreateMovieLikes < ActiveRecord::Migration[5.2]
  def change
    create_table :movie_likes do |t|
      t.integer  :user_id
      t.integer  :post_movie_id
      t.boolean  :check, default: false, null: false

      t.timestamps
    end
  end
end
