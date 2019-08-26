class PostQuestionsController < ApplicationController
  def new
  	  @post_question = PostQuestion.new
  end

  def index
  	  @post_questions = PostQuestion.page(params[:page]).reverse_order.per(9)
  end

  def show
  	  @post_question = PostQuestion.find(params[:id])
  	  @answer = Answer.new
  end

  def create
  	  @post_question = PostQuestion.new(post_question_params)
        @post_question.user_id = current_user.id
        if @post_question.save
          redirect_to post_question_path(@post_question)
        else
          render :new
        end
  end

  def edit
      @post_question = PostQuestion.find(params[:id])
  end

  def update
      post_question = PostQuestion.find(params[:id])
      post_question.update(post_question_params)
         redirect_to post_question_path(post_question)
  end

  def destroy
  	  @post_question = PostQuestion.find(params[:id])
      @post_question.destroy
         redirect_to user_path(current_user)
  end

  private
  def post_question_params
      params.require(:post_question).permit(:title, :body)
  end
end
