class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    @answer = ''
    if @question.include? '?'
      @answer = 'Silly question, get dressed and go to work!'
    elsif @question.downcase.include? 'i am going to work'
      @answer = 'Great!'
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
