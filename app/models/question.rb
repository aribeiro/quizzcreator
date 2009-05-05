# == Schema Information
# Schema version: 20090501052342
#
# Table name: questions
#
#  id            :integer         not null, primary key
#  description   :text
#  weight        :float
#  question_type :string(255)
#  quizz_id      :integer
#  created_at    :datetime
#  updated_at    :datetime
#

class Question < ActiveRecord::Base
  QUESTION_TYPES = ["TEXT", "MULTIPLE_CHOICES"]
  QUESTION_WEIGHT = [1, 1.5, 2, 2.5, 3, 3.5, 4, 4.5, 5]
  
  belongs_to :quizz
  has_many :multiple_choices

  validates_presence_of :description, :question_type, :weight
  validates_inclusion_of :question_type, :in => QUESTION_TYPES
  validates_inclusion_of :weight, :in => QUESTION_WEIGHT

  accepts_nested_attributes_for :multiple_choices, :allow_destroy => true,
                                :reject_if => proc { |choice| choice['answer'].blank? }

end
