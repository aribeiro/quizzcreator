Feature:	Manage Questions
	In order to build questions
	As an Quizz
	I want to create and manage questions

	Scenario: Question New
		Given I have a quizz titled "First"
    And I'm on the new question for the quizz
		Then I should see "First"
		Given I have no questions for quizz
		And I fill in "question[description]" with "How is your name?"
		And I select "1.5" from "question[weight]"
		And I select "Multiple choices" from "question[question_type]"
		And I press "Submit"
		And I should have 1 question
		And I fill in "question[description]" with "What are you doing?"
		And I select "2.5" from "question[weight]"
		And I select "Text" from "question[question_type]"
		And I press "Submit"
		And I should have 2 question

	Scenario: Question Edit
		Given I have a quizz
		Then I create a question for this quizz
		And I'm on the Edit question
		And the "question[description]" field should contain "Test ?"
		And the "question[weight]" field should contain "1.5"
		And the "question[question_type]" field should contain "TEXT" 
