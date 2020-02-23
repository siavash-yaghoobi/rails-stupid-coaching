class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @your_question = params[:question]
    if @your_question.downcase == 'i am going to work'
      @answer = 'Great!'
    elsif @your_question[-1] == '?'
      @answer = 'Silly question, get dressed and go to work!'
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
