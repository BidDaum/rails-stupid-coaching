class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    if @question == "i work"
      @answer = "This is the answer!"
    elsif @question.include?("?") 
      @answer = "Silly question, GoToWork!"
    elsif @question.include?("secret path") 
      @anwser = "TADAAA"
    elsif @question.include?("I am going to work!")
      @answer = "This is the spirit!"
    else @answer = "I don't care! GoToWork!!!"
    end
    
   #  @answers = @answers.select { |answer| answer.start_with?(params[:answer]) }
  end
end
