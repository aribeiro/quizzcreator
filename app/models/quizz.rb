# == Schema Information
# Schema version: 20090501052342
#
# Table name: quizzs
#
#  id          :integer         not null, primary key
#  title       :string(255)
#  description :text
#  created_at  :datetime
#  updated_at  :datetime
#

class Quizz < ActiveRecord::Base
  has_many :questions

  validates_presence_of :title
end
