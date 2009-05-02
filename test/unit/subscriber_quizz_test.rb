require 'test_helper'

class SubscriberQuizzTest < ActiveSupport::TestCase
  should_belong_to :subscriber
  should_belong_to :quizz

  should_validate_presence_of :subscriber_id, :quizz_id
end
