@github
Feature: Create_widget
As a user
I should be able to create a new widget
So that I can configure the data to display in wallboard

Scenario: Add_all_widgets
Given I click on Add New Widgets button
When I click on configure button of Github
When I enter the github data
Then I click on Save button to save the github data
When I click on Code climate and Configure
Then I click on Save button to save the Code Climate data
When I click on Jira Sprint remaining days and configure
Then I click on Save button to save sprint remaining days data
When I click on Jira Sprint Progress and configure
Then I click on save button to save Sprint Progress data
When I click on Burn Down Chart and configure
Then I click on save button to save burn down chart data
When I click on Jenkins and configure
Then I click on save button to save Jenkins data
When I click on New Relic and configure
Then I click on save button to save New Relic data
Then I click on OK button
Then I click on wallboard button




# # @dish
# Feature: Add_new_dashboard
# 	As a user
# 	I should be able to create a new dashboard 
# 	So that I can view the new dashboard in the list view

# @dish
# Scenario: 1. Add_new_dashboard with valid data
#     Given I am in the Dashboard page
#     When I Add New Dashboard
# 	Then I should see a dashboard created flash message 

# #@add_blank_data
# Scenario: 2. Add_new_dashboard with no data
# 	Given I am in the Dashboard page
# 	# When I click on Add New Dashboard
# 	When I enter blank data in the text field
# 	# Then I click on Save button to save the data
# 	Then I should see a dashboard blank error message

# # @add_same_data
# # Scenario: 3. Add_new_dashboard with same data
# # Given I am in the Dashboard page
# # When I click on Add New Dashboard
# # When I enter same data in the dashboard name text field
# # Then I click on Save button to save the data
# # Then I should see a same name error message

