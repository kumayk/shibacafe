class CreatePostQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :post_questions do |t|
      t.integer  :user_id
      t.string   :title
      t.text     :body

      t.timestamps
    end
  end
end
