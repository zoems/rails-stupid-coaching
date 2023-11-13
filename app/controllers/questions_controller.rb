class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @answer = params[:answer]

    if @answer.split.include?("time?")
      @response = Time.now
    elsif @answer.end_with?('?')
      @response = 'Silly question, get dressed and go to work!'
    else
      @response = "I don't care, get dressed and go to work!"
    end
  end
end
