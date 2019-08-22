class UsersController < ApplicationController
  before_action :authenticate_user!, only: [:edit,:update]

  def image_index
      @user = User.find(params[:id])
      @post_images = @uesr.post_images.page(params[:page]).reverse_order.per(10)
  end

  def movie_index
      @user = User.find(params[:id])
      @post_movie = PostMovie.find(params[:id])
  end

  def question_index
      @user = User.find(params[:id])
      @post_question = PostQuestion.find(params[:id])
  end
  
  def show
  	 @user = User.find(params[:id])
  end

  def edit
  	 @user = User.find(params[:id])
  end

  def update
     @user = User.find(params[:id])
     @user.update(user_params)
      redirect_to user_path(@user.id)
  end

  private
  def user_params
    params.require(:user).permit(:name, :profile_image, :introduction)
  end
end
