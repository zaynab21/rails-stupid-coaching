class QuestionsController < ApplicationController

  def ask
  end

  def answer
    @question = params[:question]
    @answer = params[:answer]
   if @question.blank?
    @answer = "Ask a fucking question"
    elsif @question == "I am going to work !"
      @answer = "Great"
    elsif @question.end_with?("?")
       @answer = "Silly question, get dressed and go to work!"
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
