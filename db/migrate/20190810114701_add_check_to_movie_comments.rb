class AddCheckToMovieComments < ActiveRecord::Migration[5.2]
  def change
    add_column :movie_comments, :check, :boolean, default: false, null: false
  end
end
