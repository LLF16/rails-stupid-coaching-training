class QuestionsController < ApplicationController
  def ask
  end

  def answer
    if params[:question] == 'I am going to work'
      @answer =  'Great!'
    elsif params[:question].last == '?'
      @answer = 'Silly question, get dressed and go to work!'
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end

  private

  def params_answer
    params.require(:answer).permit[:question]
  end
end
