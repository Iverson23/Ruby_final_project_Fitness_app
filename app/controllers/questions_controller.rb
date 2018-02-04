class QuestionsController < ApplicationController
  def index
    @questions = Question.order(created_at: :desc).all
  end

  def create
    Question.create(question_params)
    redirect_to action: "index"
  end

  def show
    @question = Question.find(params[:id])
  end

  private

  def question_params
    params.require(:question).permit(:email, :body)
  end
end
