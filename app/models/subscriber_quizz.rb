# == Schema Information
# Schema version: 20090501222855
#
# Table name: subscriber_quizzs
#
#  id                :integer         not null, primary key
#  subscriber_id     :integer
#  quizz_id          :integer
#  created_at        :datetime


class SubscriberQuizz < ActiveRecord::Base
  belongs_to :quizz
  belongs_to :subscriber

  validates_presence_of :quizz_id, :subscriber_id
end
