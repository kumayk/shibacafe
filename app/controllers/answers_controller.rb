class AnswersController < ApplicationController
	def create
        post_question = PostQuestion.find(params[:post_question_id])
        answer = current_user.answers.new(answer_params)
        answer.post_question_id = post_question.id
        answer.save
           redirect_to post_question_path(post_question)
    end

    def destroy
        answer = Answer.find(params[:id])
        if answer.destroy
          redirect_to post_question_path(id: answer.post_question_id)
        end
    end

    private
    def answer_params
        params.require(:answer).permit(:user_id, :post_question_id, :answer)
    end
end
