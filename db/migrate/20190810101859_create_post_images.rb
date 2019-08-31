class CreatePostImages < ActiveRecord::Migration[5.2]
  def change
    create_table :post_images, :options => 'ENGINE=InnoDB ROW_FORMAT=DYNAMIC' do |t|
      t.integer  :user_id
      t.string   :title
      t.text     :caption

      t.timestamps
    end
  end
end
