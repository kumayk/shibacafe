class CreateAnswers < ActiveRecord::Migration[5.2]
  def change
    create_table :answers do |t|
      t.integer  :user_id
      t.integer  :post_question_id
      t.text     :answer
      t.boolean  :check

      t.timestamps
    end
  end
end
