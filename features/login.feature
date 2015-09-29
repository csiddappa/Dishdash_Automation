@login
Feature: User Login
	As a user
	I should be able to login
	So that I can access the application

Scenario: 1. Login with valid credentials
    Given I am on Home Page
	When I login to the dashborad
	Then I should be logged in successfully