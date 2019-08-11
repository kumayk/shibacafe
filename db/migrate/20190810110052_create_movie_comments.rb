class CreateMovieComments < ActiveRecord::Migration[5.2]
  def change
    create_table :movie_comments do |t|
      t.integer  :user_id
      t.integer  :post_movie_id
      t.text     :comment
      t.boolean  :check

      t.timestamps
    end
  end
end
