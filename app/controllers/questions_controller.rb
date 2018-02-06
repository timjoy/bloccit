class QuestionsController < ApplicationController
  def index
    @questions = Question.all
    # @posts.each_with_index do |post, index|
    # end
  end

  def show
    @question = Question.find(params[:id])
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
