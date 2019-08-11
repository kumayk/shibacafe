class RemoveCheckFromMovieComments < ActiveRecord::Migration[5.2]
  def change
    remove_column :movie_comments, :check, :boolean
  end
end
