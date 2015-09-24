$LOAD_PATH << './lib/watir-page-helper/pages/dishdash/'
require 'watir-page-helper'
require 'login_page'
require 'dashboard_page'
require 'addwidgets_page'

module WatirPageHelper::Dishdash
  module EditwidgetPage
    extend WatirPageHelper::ClassMethods
    include LoginPage
    include DashboardPage
    include AddwidgetsPage

      #direct_url "http://st.dishdashboard.qwinixtech.com/"
     


def click_github_edit_button
  @browser.a(:xpath, "//div[2]/div[2]/div[2]/div/div/ul/li[4]/div/div[2]/div[2]/a").when_present.click
  sleep 3
end


  def edit_github_with_blank_data
    @browser.input(:xpath, "//div[2]/div[3]/div/div/div/div[2]/form/div[1]/div[1]/div/input").wait_until_present
   @browser.text_field(:id, "widget_organization_name").clear
    #@browser.text_field(:id, "widget_organization_name").set("")
    @browser.input(:xpath, "//div[2]/div[3]/div/div/div/div[2]/form/div[1]/div[2]/div/input").wait_until_present
   @browser.text_field(:id, "widget_access_token").clear
   #@browser.text_field(:id, "widget_access_token").set("")
  @browser.input(:xpath, "//div[2]/div[3]/div/div/div/div[2]/form/div[1]/div[3]/div/input").wait_until_present
  @browser.text_field(:id, "widget_repo_name").clear
  #@browser.text_field(:id, "widget_repo_name").set("")
     @browser.input(:type, "submit").click
      sleep 3
    end
    
def edit_github_with_invalid_credentials
  @browser.text_field(:id, "widget_organization_name").clear
    @browser.text_field(:id, "widget_access_token").clear
     @browser.text_field(:id, "widget_repo_name").clear
    @browser.text_field(:id, "widget_organization_name").set("test1")
   @browser.text_field(:id, "widget_access_token").set("test2")
   @browser.text_field(:id, "widget_repo_name").set("test3")
     @browser.input(:type, "submit").click
      sleep 3
    end


def edit_github_with_valid_credentials
  @browser.text_field(:id, "widget_organization_name").clear
    @browser.text_field(:id, "widget_access_token").clear
     @browser.text_field(:id, "widget_repo_name").clear
    @browser.text_field(:id, "widget_organization_name").set("Qwinix")
   @browser.text_field(:id, "widget_access_token").set("6f29539a0423747e855ab6c0f04c0bdff7b06fa6")
   @browser.text_field(:id, "widget_repo_name").set("loan_list")
     @browser.input(:type, "submit").click
      sleep 3
    end































     #########################################################################
    
def click_add_widget_button 
  @browser.a(:xpath, "//a[contains(text(),'Add New Widgets')]").when_present.click
  sleep 3
end

def click_configure_button
@browser.a(:xpath, "//a[contains(text(),'Configure')]").when_present.click
  sleep 3
end

def add_github_data
  @browser.input(:xpath, "//div[3]/div/div/div/div[2]/form/div[1]/div[1]/div/input").wait_until_present
          @browser.text_field(:id, "widget_organization_name").set("Qwinix")
  @browser.input(:xpath, "//div[2]/div[3]/div/div/div/div[2]/form/div[1]/div[2]/div/input").wait_until_present
  @browser.text_field(:id, "widget_access_token").set("6f29539a0423747e855ab6c0f04c0bdff7b06fa6")
  @browser.input(:xpath, "//div[2]/div[3]/div/div/div/div[2]/form/div[1]/div[3]/div/input").wait_until_present
   @browser.text_field(:id, "widget_repo_name").set("loan_list")
  
end

  def click_github_save_button
    #@browser.input(:xpath, "//div[2]/div[3]/div/div/div/div[2]/form/div[2]/input").wait_until_present
      @browser.input(:type, "submit").click
      sleep 3
    end

##############################################################
def click_codeclimate
  @browser.a(:xpath, "//div[2]/div[3]/div/div/div/div[2]/div[1]/div/div[1]/div/div[2]/a").when_present.click
  sleep 3
end


def click_codeclimate_configure_button
  @browser.a(:xpath, "//a[contains(text(),'Configure')]").when_present.click
  sleep 3
end


def add_codeclimate_data
  @browser.text_field(:id, "widget_repo_id").set("5508fdbe695680039a004191")
  @browser.text_field(:id, "widget_api_token").set("255887c05d5a64ea167e4d3455f63d8f71574536")
  sleep 3
end

def click_codeclimate_save_button
  @browser.input(:type, "submit").click
      sleep 3
    end

    def click_Jira_sprint_remaining_days
      #@browser.a(:xpath, "//a[contains(text(),'jira')]").when_present.click
      @browser.a(:xpath, "//div[2]/div[3]/div/div/div/div[2]/div[1]/div/div[1]/div/div[3]/a").when_present.click
  sleep 3
end

    def click_Jira_srd_configure_button
      @browser.a(:xpath, "//div/div/div/div[2]/div[1]/div/div[2]/div[3]/div[1]/div[1]/div[2]/a").when_present.click
  sleep 3
end


def add_Jira_sprint_remaining_days_data
   @browser.text_field(:id, "widget_url").set("https://qwinix.atlassian.net")
   @browser.text_field(:id, "widget_username").set("akumar")
    @browser.text_field(:id, "widget_password").set("Qwinix123")
    @browser.text_field(:id, "widget_view_id").set("82")
    @browser.text_field(:id, "widget_sprint_id").set("233")
  sleep 3
end


def click_Jira_sprint_remaining_days_save_button
  @browser.input(:type, "submit").click
      sleep 3
    end


#     def click_Jira_sprint_progress
#       @browser.a(:xpath, "//div/div/div/div[2]/div[1]/div/div[2]/div[3]/div[2]/div[1]/div[2]/a").when_present.click
#   sleep 3
# end


    def click_Jira_sp_configure_button
      @browser.a(:xpath, "//div/div/div/div[2]/div[1]/div/div[2]/div[3]/div[2]/div[1]/div[2]/a").when_present.click
      sleep 3
    end
    

def add_Jira_sprint_progress_data
  @browser.text_field(:id, "widget_url").set("https://qwinix.atlassian.net")
   @browser.text_field(:id, "widget_username").set("akumar")
    @browser.text_field(:id, "widget_password").set("Qwinix123")
    @browser.text_field(:id, "widget_view_id").set("82")
    @browser.text_field(:id, "widget_sprint_id").set("233")
  sleep 3
end

def click_Jira_sprint_progress_save_button
  @browser.input(:type, "submit").click
      sleep 3
    end


    def click_Jira_bdc_configure_button
      @browser.a(:xpath, "//div[3]/div/div/div/div[2]/div[1]/div/div[2]/div[3]/div[3]/div[1]/div[2]/a").when_present.click
      sleep 3
    end

    
def add_Jira_burn_down_data
  @browser.text_field(:id, "widget_url").set("https://qwinix.atlassian.net")
   @browser.text_field(:id, "widget_username").set("akumar")
    @browser.text_field(:id, "widget_password").set("Qwinix123")
    @browser.text_field(:id, "widget_view_id").set("82")
    @browser.text_field(:id, "widget_sprint_id").set("233")
  sleep 3
end

def click_Jira_bdc_save_button
  @browser.input(:type, "submit").click
      sleep 3
    end


 def click_Jenkins_button
  @browser.a(:xpath, "//div[2]/div[3]/div/div/div/div[2]/div[1]/div/div[1]/div/div[4]/a").when_present.click
  sleep 3
end


def click_Jenkins_configure_button
      @browser.a(:xpath, "//a[contains(text(),'Configure')]").when_present.click
  sleep 3
end

    def add_Jenkins_data
  @browser.text_field(:id, "widget_url").set("http://jenkins.qwinixtech.com:8000/view/Loan%20List%20Project%20Pipeline/")
   @browser.text_field(:id, "widget_username").set("asimha")
    @browser.text_field(:id, "widget_password").set("simha1991")
    sleep 3
  end

  def click_Jenkins_save_button
    @browser.input(:type, "submit").click
      sleep 3
    end

 def click_Newrelic_button
  @browser.a(:xpath, "//div[2]/div[3]/div/div/div/div[2]/div[1]/div/div[1]/div/div[5]/a").when_present.click
  sleep 3
end

    def click_Newrelic_configure_button
      @browser.a(:xpath, "//a[contains(text(),'Configure')]").when_present.click
  sleep 3
end

def add_Newrelic_data
  @browser.text_field(:id, "widget_app_name").set("it.plist.qwinixtech.com")
   @browser.text_field(:id, "widget_repo_id").set("6682ebad80accbe5944c1ab51b1b379d5116303263606b3")
 end


def click_Newrelic_save_button
  @browser.input(:type, "submit").click
      sleep 3
    end

def click_addwidgets_ok_button
  @browser.button(:class, "btn btn-primary").click
      sleep 3
    end

  def click_all_widgets_wallboard_button
    @browser.a(:class, "wallboard_btn btn btn-primary").click
      sleep 8
    end




  end
end










     