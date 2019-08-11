class AddCheckToLikes < ActiveRecord::Migration[5.2]
  def change
    add_column :likes, :check, :boolean, default: false, null: false
  end
end
