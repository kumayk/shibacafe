class CreateImageComments < ActiveRecord::Migration[5.2]
  def change
    create_table :image_comments do |t|
      t.integer  :user_id
      t.integer  :post_image_id
      t.text     :comment
      t.boolean  :check

      t.timestamps
    end
  end
end
