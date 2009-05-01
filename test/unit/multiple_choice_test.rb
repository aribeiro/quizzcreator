require 'test_helper'

class MultipleChoiceTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  should_belong_to :question
  should_require_attributes :answer, :is_answer 
  
end
