class AddVideoToPostMovies < ActiveRecord::Migration[5.2]
  def change
    add_column :post_movies, :video, :string
  end
end
