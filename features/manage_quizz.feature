Feature:	Manage Quizzes
	In order to build quizzes
	As an user
	I want to create and manage quizzes

	Scenario: Quizz List
		Given I have quizzes titled Quizz1, Quizz2
		When I go to the list of quizzes
		Then I should see "Quizz1"
		And I should see "Quizz2"
	
	Scenario: Create Valid Quizz
		Given I have no quizzes
		And I am on the list of quizzes
		When I follow "New Quizz"
		And I fill in "Title" with "First Quizz"
		And I fill in "Description" with "It is the first quizz ..."
		And I press "Submit"
		Then I should see "Successfully created quizz."
		And I should see "First Quizz"
		And I should see "It is the first quizz ..."
		And I should have 1 quizz

	
