class CategoriesController < ApplicationController
  def index
  	@category = Category.find(params[:id])
    @categories = Category.all
    @post_images = PostImage.page(params[:page]).per(9)
  end
  def show
  	@category = Category.find(params[:id])
  end

  private
  def category_params
    params.require(:category).permit(:category_name)
  end
end
