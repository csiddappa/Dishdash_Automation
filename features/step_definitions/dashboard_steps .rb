Given(/^I am in the Dashboard page$/) do
  @site = "dishdash".downcase
  visit @site, :dashboard_page
  on @site, :dashboard_page do |dashboard|
  dashboard.verify_manage_dashboardpage
end
end

When(/^I Add New Dashboard$/) do
  on @site, :dashboard_page do |dashboard|
   dashboard.click_add_new_dashboard 
   dashboard.enter_invalid_d_name
   dashboard.enter_dashboard_name
  end
end

Then(/^I should see a dashboard created flash message$/) do
  on @site, :dashboard_page do |dashboard|
   dashboard.verify_flash_message
  end
end 

# When(/^I enter blank data in the text field$/) do
#  on @site, :dashboard_page do |dashboard|
#     dashboard.enter_blank_data
# end
# end

# Then(/^I should see a dashboard blank error message$/) do
#   on @site, :dashboard_page do |dashboard|
#     dashboard.verify_blank_error_message
# end
# end


























