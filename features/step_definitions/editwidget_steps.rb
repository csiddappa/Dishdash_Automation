Given(/^I click on github edit button and modify the data$/) do
  @site = "dishdash".downcase
visit @site, :editwidget_page
 on @site, :editwidget_page do |editwidget|
  editwidget.click_github_edit_button
  editwidget.edit_github_with_blank_data
  editwidget.edit_github_with_invalid_credentials
  editwidget.edit_github_with_valid_credentials
end
end

Then(/^I should be able to update the github data and see the flash message$/) do
  on @site, :editwidget_page do |editwidget|
    #editwidget.click_github_update_button
    editwidget.verify_github_flash_message
  end
end

When(/^I click on code climate edit button and modify the data$/) do
  on @site, :editwidget_page do |editwidget|
    editwidget.click_codeclimate_edit_button
    editwidget.edit_codeclimate_with_blank_data
    editwidget.edit_codeclimate_with_invalid_credentials
    editwidget.edit_codeclimate_with_valid_credentials
  end
end

Then(/^I should be able to update the code climate data and see the flash message$/) do
  on @site, :editwidget_page do |editwidget|
  editwidget.click_codeclimate_update_button
  editwidget.verify_codeclimate_flash_message
end
end

When(/^I click on jira sprint remaining days edit button and modify the data$/) do
  on @site, :editwidget_page do |editwidget|
    editwidget.click_srd_edit_button
    editwidget.edit_srd_with_blank_data
    editwidget.edit_srd_with_invalid_credentials
    editwidget.edit_srd_with_valid_credentials
  end
end

Then(/^I should be able to update the srd data and see the flash message$/) do
  on @site, :editwidget_page do |editwidget|
  editwidget.click_srd_update_button
  editwidget.verify_srd_flash_message
end
end

When(/^I click on jira sprint progress edit button and modify the data$/) do
  on @site, :editwidget_page do |editwidget|
    editwidget.click_sp_edit_button
    editwidget.edit_sp_with_blank_data
    editwidget.edit_sp_with_invalid_credentials
    editwidget.edit_sp_with_valid_credentials
  end
  end

Then(/^I should be able to update the sp data and see the flash message$/) do
 on @site, :editwidget_page do |editwidget|
  editwidget.click_sp_update_button 
  editwidget.verify_sp_flash_message
end
end

When(/^I click on jira burn down chart edit button and modify the data$/) do
 on @site, :editwidget_page do |editwidget|
    editwidget.click_bdc_edit_button
    editwidget.edit_bdc_with_blank_data
    editwidget.edit_bdc_with_invalid_credentials
    editwidget.edit_bdc_with_valid_credentials
  end 
end

Then(/^I should be able to update the bdc data and see the flash message$/) do
  on @site, :editwidget_page do |editwidget|
  editwidget.click_bdc_update_button 
  editwidget.verify_bdc_flash_message
end
end

When(/^I click on jenkins edit button and modify the data$/) do
 on @site, :editwidget_page do |editwidget|
    editwidget.click_jenkins_edit_button
    editwidget.edit_jenkins_with_blank_data
    editwidget.edit_jenkins_with_invalid_credentials
    editwidget.edit_jenkins_with_valid_credentials
  end  
end

Then(/^I should be able to update the jenkins data and see the flash message$/) do
  on @site, :editwidget_page do |editwidget|
  editwidget.click_jenkins_update_button 
  editwidget.verify_jenkins_flash_message
end
end

When(/^I click on new relic edit button and modify the data$/) do
  on @site, :editwidget_page do |editwidget|
    editwidget.click_newrelic_edit_button
    editwidget.edit_newrelic_with_blank_data
    editwidget.edit_newrelic_with_invalid_credentials
    editwidget.edit_newrelic_with_valid_credentials
  end 
end

Then(/^I should be able to update the new relic data and see the flash message$/) do
  on @site, :editwidget_page do |editwidget|
  editwidget.click_newrelic_update_button 
  editwidget.verify_newrelic_flash_message
end
end












































# # Given(/^I am in the Dashboard page$/) do
# #   @site = "dishdash".downcase
# #   visit @site, :addwidgets_page
# #   on @site, :addwidgets_page do |dashboard|
# #  dashboard.verify_manage_dashboardpage
# # end
# # end



# Given(/^I click on Add New Widgets button$/) do
#   @site = "dishdash".downcase
#   visit @site, :addwidgets_page
#   on @site, :addwidgets_page do |addwidgets|
#     addwidgets.click_add_widget_button
#     end
#   end

# When(/^I click on configure button of Github$/) do
# on @site, :addwidgets_page do |addwidgets|
#     addwidgets.click_configure_button
#   end
# end

# When(/^I enter the github data$/) do
#   on @site, :addwidgets_page do |addwidgets|
#     addwidgets.add_github_data
#   end
# end

# Then(/^I click on Save button to save the github data$/) do
#   on @site, :addwidgets_page do |addwidgets|
#     addwidgets.click_github_save_button
#   end
# end


# When(/^I click on Code climate and Configure$/) do
#   on @site, :addwidgets_page do |addwidgets|
#     addwidgets.click_codeclimate
#     addwidgets.click_codeclimate_configure_button
#     addwidgets.add_codeclimate_data
# end
# end

# Then(/^I click on Save button to save the Code Climate data$/) do
#   on @site, :addwidgets_page do |addwidgets|
#     addwidgets.click_codeclimate_save_button
# end
# end

# When(/^I click on Jira Sprint remaining days and configure$/) do
#   on @site, :addwidgets_page do |addwidgets|
#     addwidgets.click_Jira_sprint_remaining_days
#     addwidgets.click_Jira_srd_configure_button
#     addwidgets.add_Jira_sprint_remaining_days_data

# end
# end

# Then(/^I click on Save button to save sprint remaining days data$/) do
#   on @site, :addwidgets_page do |addwidgets|
#     addwidgets.click_Jira_sprint_remaining_days_save_button
#   end
  
# end

# When(/^I click on Jira Sprint Progress and configure$/) do
#   on @site, :addwidgets_page do |addwidgets|
#     #addwidgets.click_Jira_sprint_progress
#     addwidgets.click_Jira_sp_configure_button
#     addwidgets.add_Jira_sprint_progress_data
#   end
# end

# Then(/^I click on save button to save Sprint Progress data$/) do
#   on @site, :addwidgets_page do |addwidgets|
#     addwidgets.click_Jira_sprint_progress_save_button
#   end
# end

# When(/^I click on Burn Down Chart and configure$/) do
#   on @site, :addwidgets_page do |addwidgets|
#     #addwidgets.clcik_Jira_burn_down_button
#     addwidgets.click_Jira_bdc_configure_button
#     addwidgets.add_Jira_burn_down_data
# end
# end

# Then(/^I click on save button to save burn down chart data$/) do
#   on @site, :addwidgets_page do |addwidgets|
#     addwidgets.click_Jira_bdc_save_button
#   end
# end

# When(/^I click on Jenkins and configure$/) do
#   on @site, :addwidgets_page do |addwidgets|
#     addwidgets.click_Jenkins_button
#     addwidgets.click_Jenkins_configure_button
#     addwidgets.add_Jenkins_data
#   end
# end

# Then(/^I click on save button to save Jenkins data$/) do
#   on @site, :addwidgets_page do |addwidgets|
#     addwidgets.click_Jenkins_save_button
#   end
# end

# When(/^I click on New Relic and configure$/) do
#   on @site, :addwidgets_page do |addwidgets|
#     addwidgets.click_Newrelic_button
#     addwidgets.click_Newrelic_configure_button
#     addwidgets.add_Newrelic_data
#   end
# end

# Then(/^I click on save button to save New Relic data$/) do
#   on @site, :addwidgets_page do |addwidgets|
#     addwidgets.click_Newrelic_save_button
#   end
# end


# Then(/^I click on OK button$/) do
#   on @site, :addwidgets_page do |addwidgets|
#     addwidgets.click_addwidgets_ok_button
#   end
#   end


# Then(/^I click on wallboard button$/) do
# on @site, :addwidgets_page do |addwidgets|
#     addwidgets.click_all_widgets_wallboard_button
#   end
# end























































