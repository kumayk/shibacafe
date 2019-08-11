class RemoveCheckFromLikes < ActiveRecord::Migration[5.2]
  def change
    remove_column :likes, :check, :boolean
  end
end
