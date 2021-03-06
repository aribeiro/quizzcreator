class QuestionsController < ApplicationController
  def index
    @quizz = Quizz.find(params[:quizz_id])
  end

  def new
    @quizz = Quizz.find(params[:quizz_id])
    @question = @quizz.questions.new
    @question.multiple_choices.build
  end
  
  def create
    @quizz = Quizz.find(params[:quizz_id])
    @question = @quizz.questions.new(params[:question])
    if @question.save
      flash[:notice] = "Successfully created question."
      redirect_to new_quizz_question_path(@quizz)
    else
      render :action => 'new'
    end
  end

  def edit
    @quizz = Quizz.find(params[:quizz_id])
    @question = Question.find(params[:id])
    @question.multiple_choices.build if @question.multiple_choices.empty?
  end

  def update
    @quizz = Quizz.find(params[:quizz_id])
    @question = @quizz.questions.find(params[:id])
    @question.attributes = params[:question]
    if @question.save
      flash[:notice] = "Successfully updated question."
      redirect_to new_quizz_question_path(@quizz)
    else
      render :action => 'edit'
    end
  end

  def destroy
    @quizz = Quizz.find(params[:quizz_id])
    @question = Question.find(params[:id])
    @question.destroy
    flash[:notice] = "Successfully destroyed question."
    redirect_to new_quizz_question_path(@quizz)
  end
end
