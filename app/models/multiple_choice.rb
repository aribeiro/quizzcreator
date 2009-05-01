# == Schema Information
# Schema version: 20090501052342
#
# Table name: multiple_choices
#
#  id          :integer         not null, primary key
#  answer      :string(255)
#  is_answer   :boolean
#  question_id :integer
#  created_at  :datetime
#  updated_at  :datetime
#

class MultipleChoice < ActiveRecord::Base
  belongs_to :question

  validates_presence_of :answer, :is_answer
end
