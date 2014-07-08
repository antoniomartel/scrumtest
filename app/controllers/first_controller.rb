# This file is app/controllers/questions_controller.rb
class FirstController < ApplicationController
  def index
    id = Question.first.id
    redirect_to question_path(id)
  end
end
