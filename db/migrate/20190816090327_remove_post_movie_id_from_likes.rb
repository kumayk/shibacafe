class RemovePostMovieIdFromLikes < ActiveRecord::Migration[5.2]
  def change
    remove_column :likes, :post_movie_id, :integer
  end
end
