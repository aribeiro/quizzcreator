class Question < ActiveRecord::Base
  QUESTION_TYPES = ["Text", "Multiple choices", "Checkboxes"]
  QUESTION_WEIGHT = [1, 1.5, 2, 2.5, 3, 3.5, 4, 4.5, 5]
  
  belongs_to :quizz
  has_many :multiple_choices

  validates_presence_of :description
  validates_inclusion_of :question_type, :in => QUESTION_TYPES

end
