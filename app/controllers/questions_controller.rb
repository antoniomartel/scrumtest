# This file is app/controllers/questions_controller.rb
class QuestionsController < ApplicationController
  def index
    @questions = Question.all
  end

  def show
    id = params[:id] # retrieve question ID from URI route
    
    @question = Question.find(id) # look up question by unique ID
  end

  def next 
    question = Question.find params[:id]

    points = session[:points].to_i
    if points == nil then 
      points = 0
    end

    if params[:answers_radio] != nil
      answer = question.answers.find(params[:answers_radio])
      if answer.right == true then
        points = points + 1
      end
    end
 
    session[:points] = points

    next_one = 1 + question.id.to_i
    if next_one <= Question.first.id + Question.count - 1
      @question = Question.find(next_one)
      redirect_to question_path(@question)
    else
      redirect_to results_path
    end
  end
end
