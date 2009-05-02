class UserSubscriber < ActiveRecord::Base
   belongs_to :user
   belongs_to :subscriber

   validates_presence_of :user_id, :subscriber_id
end
