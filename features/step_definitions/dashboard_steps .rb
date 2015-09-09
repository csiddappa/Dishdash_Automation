Given(/^I am in the Dashboard page$/) do
  @site = "Dishdash".downcase
  visit @site, :dashboard_page
  on @site, :dashboard_page do |dashboard|
  	dashboard.verify_manage_dashboardpage
end
end

When(/^I click on Add New Dashboard$/) do
 on @site, :dashboard_page do |dashboard|
   dashboard.click_add_new_dashboard
   end
 end


When(/^I enter the Dashboard Name$/) do
  on @site, :dashboard_page do |dashboard|
    dashboard.enter_dashboard_name
   end
 end

Then(/^I click on Save button to save the data$/) do
  on @site, :dashboard_page do |dashboard|
   dashboard.click_save
   end
 end

Then(/^I should see a dashboard created flash message$/) do
  on @site, :dashboard_page do |dashboard|
   dashboard.verify_flash_message
   end
   end 


#############################################################################


When(/^I enter blank data in the text field$/) do
  @site = "Dishdash".downcase
 on @site, :dashboard_page do |dashboard|
    dashboard.enter_blank_data
end
end

Then(/^I should see a dashboard blank error message$/) do
  on @site, :dashboard_page do |dashboard|
    dashboard.verify_blank_error_message
end
end


























