class Subscriber < ActiveRecord::Base
  has_many :user_subscribers
  has_many :users, :through => :user_subscribers
  
  has_many :subscriber_quizzs
  has_many :quizzs, :through => :subscriber_quizzs
   
  validates_presence_of :email, :first_name, :last_name


end
