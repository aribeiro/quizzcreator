class QuizzsController < ApplicationController
  before_filter :load_constants, :except => [:index, :create, :update]
  
  def index
    @quizzs = Quizz.all
  end

  def new
    @quizz = Quizz.new
    @quizz.questions.build
    @quizz.questions.each{|q| q.multiple_choices.build}

  end

  def create
    @quizz = Quizz.new(params[:quizz])
    if @quizz.save
      flash[:notice] = "Successfully created quizz."
      redirect_to @quizz
    else
      render :action => 'new'
    end
  end

  def edit
    @quizz = Quizz.find(params[:id])
  end

  def update
    @quizz = Quizz.find(params[:id])
    @quizz.attributes = params[:quizz]
    if @quizz.save
      flash[:notice] = "Successfully updated quizz."
      redirect_to @quizz
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @quizz = Quizz.find(params[:id])
    @quizz.destroy
    flash[:notice] = "Successfully destroyed quizz."
    redirect_to quizzs_url
  end



  private

  def load_constants 
    @question_types = Question::QUESTION_TYPES
    @question_weigth = Question::QUESTION_WEIGHT
  end
end
