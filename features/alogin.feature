@login
Feature: User Login
	As a user
	I should be able to login
	So that I can access the application

Scenario: 1. Login with valid credentials
    Given I am on Home Page
	When I login to the dashborad
	Then I should be logged in successfully
	#Then I should be logged in successfully


# Scenario: 2. Add_new_user with blank fields

#    Given I am in the Manage user page
#    When I click on Add New User tab
#    When I leave all the fields blank
#    And I click on Save button


