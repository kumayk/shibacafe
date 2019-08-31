class CreateNotifications < ActiveRecord::Migration[5.2]
  def change
    create_table :notifications, :options => 'ENGINE=InnoDB ROW_FORMAT=DYNAMIC' do |t|
      t.integer  :visiter_id
      t.integer  :visited_id
      t.integer  :post_image_id
      t.integer  :image_comment_id
      t.integer  :post_movie_id
      t.integer  :movie_comment_id
      t.integer  :post_question_id
      t.integer  :answer_id
      t.string   :action
      t.boolean  :check, default: false, null: false

      t.timestamps
    end
  end
end
