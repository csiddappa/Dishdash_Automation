

# Given(/^I am in the Dashboard page$/) do
#   @site = "dishdash".downcase
#   visit @site, :addwidgets_page
#   on @site, :addwidgets_page do |dashboard|
#  dashboard.verify_manage_dashboardpage
# end
# end



Given(/^I click on Add New Widgets button$/) do
  @site = "dishdash".downcase
  visit @site, :addwidgets_page
  on @site, :addwidgets_page do |addwidgets|
    addwidgets.click_add_widget_button
    end
  end

When(/^I click on configure button of Github$/) do
on @site, :addwidgets_page do |addwidgets|
    addwidgets.click_configure_button
  end
end

When(/^I enter the github data$/) do
  on @site, :addwidgets_page do |addwidgets|
    addwidgets.add_github_data
  end
end

Then(/^I click on Save button to save the github data$/) do
  on @site, :addwidgets_page do |addwidgets|
    addwidgets.click_github_save_button
  end
end


When(/^I click on Code climate and Configure$/) do
  on @site, :addwidgets_page do |addwidgets|
    addwidgets.click_codeclimate
    addwidgets.click_codeclimate_configure_button
    addwidgets.add_codeclimate_data
end
end

Then(/^I click on Save button to save the Code Climate data$/) do
  on @site, :addwidgets_page do |addwidgets|
    addwidgets.click_codeclimate_save_button
end
end

When(/^I click on Jira Sprint remaining days and configure$/) do
  on @site, :addwidgets_page do |addwidgets|
    addwidgets.click_Jira_sprint_remaining_days
    addwidgets.click_Jira_srd_configure_button
    addwidgets.add_Jira_sprint_remaining_days_data

end
end

Then(/^I click on Save button to save sprint remaining days data$/) do
  on @site, :addwidgets_page do |addwidgets|
    addwidgets.click_Jira_sprint_remaining_days_save_button
  end
  
end

When(/^I click on Jira Sprint Progress and configure$/) do
  on @site, :addwidgets_page do |addwidgets|
    #addwidgets.click_Jira_sprint_progress
    addwidgets.click_Jira_sp_configure_button
    addwidgets.add_Jira_sprint_progress_data
  end
end

Then(/^I click on save button to save Sprint Progress data$/) do
  on @site, :addwidgets_page do |addwidgets|
    addwidgets.click_Jira_sprint_progress_save_button
  end
end

When(/^I click on Burn Down Chart and configure$/) do
  on @site, :addwidgets_page do |addwidgets|
    #addwidgets.clcik_Jira_burn_down_button
    addwidgets.click_Jira_bdc_configure_button
    addwidgets.add_Jira_burn_down_data
end
end

Then(/^I click on save button to save burn down chart data$/) do
  on @site, :addwidgets_page do |addwidgets|
    addwidgets.click_Jira_bdc_save_button
  end
end

When(/^I click on Jenkins and configure$/) do
  on @site, :addwidgets_page do |addwidgets|
    addwidgets.click_Jenkins_button
    addwidgets.click_Jenkins_configure_button
    addwidgets.add_Jenkins_data
  end
end

Then(/^I click on save button to save Jenkins data$/) do
  on @site, :addwidgets_page do |addwidgets|
    addwidgets.click_Jenkins_save_button
  end
end

When(/^I click on New Relic and configure$/) do
  on @site, :addwidgets_page do |addwidgets|
    addwidgets.click_Newrelic_button
    addwidgets.click_Newrelic_configure_button
    addwidgets.add_Newrelic_data
  end
end

Then(/^I click on save button to save New Relic data$/) do
  on @site, :addwidgets_page do |addwidgets|
    addwidgets.click_Newrelic_save_button
  end
end


Then(/^I click on OK button$/) do
on @site, :addwidgets_page do |addwidgets|
     addwidgets.click_addwidgets_ok_button
   end
   end


Then(/^I click on wallboard button$/) do
on @site, :addwidgets_page do |addwidgets|
    addwidgets.click_all_widgets_wallboard_button
  end
end























































