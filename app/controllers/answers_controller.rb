class AnswersController < ApplicationController


  def index
    @all = Answer.all
  end

  def show
    @all_answer = Answer.joins(:question).find(params[:id])
  end
  
end
