class MultipleChoice < ActiveRecord::Base
  belongs_to :question

  validates_presence_of :answer, :is_answer
end
