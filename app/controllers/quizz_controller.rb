class QuizzController < ApplicationController
  def index
    @quizzs = Quizz.all
  end

  def new
    @quizz = Quizz.new
    @question_types = Question::QUESTION_TYPES
    @question_weigth = Question::QUESTION_WEIGHT
  end

end
