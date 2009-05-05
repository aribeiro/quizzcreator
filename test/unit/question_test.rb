require 'test_helper'

class QuestionTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  
  should_belong_to :quizz

  should_have_many :multiple_choices
  should_validate_presence_of :description, :weight, :question_type
 
  should_allow_values_for :question_type, "TEXT", "MULTIPLE_CHOICES"
  should_allow_values_for :weight, 1, 1.5, 2, 2.5, 3, 3.5, 4, 4.5, 5

end
