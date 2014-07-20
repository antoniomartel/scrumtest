# This file is app/controllers/questions_controller.rb
class QuestionsController < ApplicationController
  def index
    @questions = Question.all
  end

  def show
    seq = params[:id].to_i # retrieve question sequence number
    rands = session[:rands]

    puts seq
    puts rands[seq]
    
    @question = Question.find(rands[seq]) # look up question by unique ID
  end

  def next 
    seq = params[:id].to_i # retrieve question sequence number
    rands = session[:rands]
    question = Question.find(rands[seq]) # look up question by unique ID

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

    next_one = seq + 1
  
    if next_one < 10
      redirect_to question_path(next_one)
    else
      redirect_to results_path
    end
  end
end
