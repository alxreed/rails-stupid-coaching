class QuestionsController < ApplicationController
  def ask
  end
  
  def answer
    @question = params["question"]
    if @question.include? "?"
      @answer = "I can feel your motivation! Silly question, get dressed and go to work!"
  
    elsif @question == "I AM GOING TO WORK RIGHT NOW!"
      @answer = ""
  
    elsif @question == @question.upcase
      @answer = "I can feel your motivation! I don't care, get dressed and go to work!"
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
