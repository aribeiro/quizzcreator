class SubscriberQuizz < ActiveRecord::Base
  belongs_to :quizz
  belongs_to :subscriber

  validates_presence_of :quizz_id, :subscriber_id
end
