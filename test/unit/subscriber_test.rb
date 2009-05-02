require 'test_helper'

class SubscriberTest < ActiveSupport::TestCase
  should_have_many :user_subscriber
  should_have_many :user, :through => :user_subscriber
  
  should_have_many :subscriber_quizz
  should_have_many :quizz, :through => :subscriber_quizz
  
  should_validate_presence_of :first_name, :last_name, :email
  
end
