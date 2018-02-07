class QuestionsController < ApplicationController
  def index
    @questions = Question.all
    # @questions.each_with_index do |question, index|
    # end
  end

  def show
    @question = Question.find(params[:id])
  end

  def new
    @question = Question.new
  end

  def create

    @question = Question.new
    @question.title = params[:question][:title]
    @question.body = params[:question][:body]
    # @question.resolved = false
    if @question.save
      flash[:notice] = "question was saved."
      redirect_to @question
    else
      flash.now[:alert] = "There was an error saving the question. Please try again."
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
