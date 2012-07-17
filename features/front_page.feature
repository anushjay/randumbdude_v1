Feature: Front Page
	In order to see the most relevant posts
	As a reader
	I want the five most recent posts on the front page
	
	Scenario: 1 post in blog
		Given I have a post
		And my post has title "My Post"
		And my post has body "This is my post"
		And my post author with name "Anush Jayaraman"
		When I go to the homepage
		Then show me the page
		Then I should see "My Post"
		And I should see "This is my post"
		And I should see "Anush Jayaraman"