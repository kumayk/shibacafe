class NotificationsController < ApplicationController
  def index
    @notifications = current_user.passive_notifications.page(params[:page]).per(10)
   # 通知マークの表示(既読true/未読false)
    @notifications.where(check: false).each do |notification|
    notification.update_attributes(check: true)
    end

  end
end
