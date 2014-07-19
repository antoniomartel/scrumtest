# This file is app/controllers/questions_controller.rb
class FirstController < ApplicationController
  def index
    @questions = Question.all
    @rands = Array.new

    i = 0
    @questions.each do |q|
      @rands[i] = q.id.to_i
      i = i + 1
    end

    puts @rands
    @rands = @rands.shuffle
    puts @rands

    session[:rands] = @rands

    redirect_to question_path(0)
  end
end
