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

Given /^I have a quizz$/ do
  @quizz = Quizz.create!(:title => "First", :description => "First quizz") 
end

Then /^I create a question for this quizz$/ do
  @question = @quizz.questions.create!(:description => "Test ?", :weight => 1.5, :question_type => "TEXT")
end

Then /^I'm on the Edit question$/ do
  visit new_quizz_question_path(@quizz) 
  raise response.inspect  
end

