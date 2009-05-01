# == Schema Information
# Schema version: 20090501052342
#
# Table name: users
#
#  id                :integer         not null, primary key
#  created_at        :datetime
#  updated_at        :datetime
#  login             :string(255)     not null
#  crypted_password  :string(255)     not null
#  password_salt     :string(255)     not null
#  persistence_token :string(255)     not null
#  login_count       :integer         default(0), not null
#  last_request_at   :datetime
#  last_login_at     :datetime
#  current_login_at  :datetime
#  last_login_ip     :string(255)
#  current_login_ip  :string(255)
#  perishable_token  :string(255)     default(""), not null
#  email             :string(255)     default(""), not null
#

class User < ActiveRecord::Base
  acts_as_authentic
  
  def deliver_password_reset_instructions!
    reset_perishable_token!
    Notifier.deliver_password_reset_instructions(self)
  end
end
