
# Given(/^I am in the Manage user page$/) do
#   @site = "Dishdash".downcase
#   visit @site, :newuser_page
#   on @site, :newuser_page do |manageuser|
#     manageuser.verify_manage_user
#   end
# end

# When(/^I click on Add New User tab$/) do
#   on @site, :newuser_page do |manageuser|
#     manageuser.click_add_new_user
#   end
# end

# When(/^I enter all the details$/) do
#   on @site, :newuser_page do |manageuser|
#    manageuser.enter_all_the_data
#   end
# end

# When(/^I click on Save button$/) do
#   on @site, :newuser_page do |manageuser|
#     manageuser.click_save
# end
# end

# Then(/^I should see a flash message$/) do
#   on @site, :newuser_page do |manageuser|
#     manageuser.verify_flash_message
# end
# end

# ### Scenario: 2 ######

# When(/^I leave all the fields blank$/) do
#   on @site, :newuser_page do |manageuser|
#     manageuser.leave_all_fields_blank
#   end
# end




