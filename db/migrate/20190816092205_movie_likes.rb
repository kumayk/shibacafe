class MovieLikes < ActiveRecord::Migration[5.2]
  def change
     drop_table :movie_likes
  end
end
