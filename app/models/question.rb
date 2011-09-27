class Question < ActiveRecord::Base
  belongs_to :campaign
  has_many :answers, :dependent => :destroy
  accepts_nested_attributes_for :answers, :reject_if => lambda { |a| a[:content].blank? }, :allow_destroy => true	  
  def index_question  	  
  	  int = campaign.questions.index(self) + 1
  end
end

