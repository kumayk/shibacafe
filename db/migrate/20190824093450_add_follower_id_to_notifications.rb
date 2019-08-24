class AddFollowerIdToNotifications < ActiveRecord::Migration[5.2]
  def change
    add_column :notifications, :follower_id, :integer
  end
end
