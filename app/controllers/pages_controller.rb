# This file is app/controllers/results_controller.rb
class PagesController < ApplicationController
  def starttest
    session[:points] = 0
  end
end
