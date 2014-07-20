class Question < ActiveRecord::Base
  has_many :answers 

  def self.max_questions
    10
  end
end
