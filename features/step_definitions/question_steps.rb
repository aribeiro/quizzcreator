Given /^I have a quizz titled (.+)$/ do |title|
  @quizz = Quizz.create!(:title => title, :description => "First quizz") 
end

Given /^I have no questions for quizz$/ do 
  @quizz.questions.delete_all
end

Given /^I'm on the new question for the quizz$/ do
  visit new_quizz_question_path(@quizz)
end

Given /^I should have (\d+) question$/ do |count|
  @quizz.questions.count.should == count.to_i
end


