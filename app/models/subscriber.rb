class Subscriber < ActiveRecord::Base
  has_many :user_subscriber
  has_many :user, :through => :user_subscriber
  
  has_many :subscriber_quizz
  has_many :quizz, :through => :subscriber_quizz
   
  validates_presence_of :email, :first_name, :last_name


end
