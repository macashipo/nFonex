class Answer < ActiveRecord::Base
  belongs_to :question
  def index_answer  	  
  	  int = question.answers.index(self) + 1
  end
end
