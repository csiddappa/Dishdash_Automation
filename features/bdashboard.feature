@dish
Feature: Add_new_dashboard
	As a user
	I should be able to create a new dashboard 
	So that I can view the new dashboard in the list view

#@add_valid_data
Scenario: 1. Add_new_dashboard with valid data
   
    Given I am in the Dashboard page
	When I click on Add New Dashboard
	When I enter the Dashboard Name
	Then I click on Save button to save the data
	Then I should see a dashboard created flash message 
	
#@add_blank_data
Scenario: 2. Add_new_dashboard with no data

Given I am in the Dashboard page
When I click on Add New Dashboard
When I enter blank data in the text field
Then I click on Save button to save the data
Then I should see a dashboard blank error message

# @add_same_data
# Scenario: 3. Add_new_dashboard with same data

# Given I am in the Dashboard page
# When I click on Add New Dashboard
# When I enter same data in the dashboard name text field
# Then I click on Save button to save the data
# Then I should see a same name error message

