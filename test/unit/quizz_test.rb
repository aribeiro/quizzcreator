require 'test_helper'

class QuizzTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  
  should_have_many :questions
  should_require_attributes :title
end
