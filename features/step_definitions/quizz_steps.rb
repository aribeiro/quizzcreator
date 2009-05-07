Given /^I have quizzes titled (.+)$/ do |titles|
  titles.split(", ").each do |title|
    Quizz.create!(:title => title)
  end
end

Given /^I have no quizzes$/ do
  Quizz.delete_all
end

Then /^I should go to the new quizz ([0-9]+) questions$/ do |quizz|
  visit "/quizzs/#{quizz}/questions/new"
end


Then /^I should have ([0-9]+) quizz$/ do |count|
  Quizz.count.should == count.to_i
end
