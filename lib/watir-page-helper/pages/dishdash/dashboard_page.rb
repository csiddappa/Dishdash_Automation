$LOAD_PATH << './lib/watir-page-helper/pages/dishdash/'
require 'watir-page-helper'
require 'login_page'

module WatirPageHelper::Dishdash
  module DashboardPage
    extend WatirPageHelper::ClassMethods
    include LoginPage

      #direct_url "http://st.dishdashboard.qwinixtech.com/"
     
    def verify_manage_dashboardpage  
       verify_manageboard = @browser.div(:id, "div_dashboard_index")
       verify_manageboard.wait_until_present
       if verify_manageboard.exists?
         return "manageboard page exists"
       end
     end
   

    def click_add_new_dashboard
      @browser.a(:xpath, "//a[contains(text(),'Add New Dashboard')]").when_present.click 
    end

    def click_save
      @browser.input(:value, "Save").click
      sleep 3
    end

    def enter_invalid_d_name
      raise "Add New Dashboard is not appearing" unless @browser.h4(:xpath, "//h4[contains(text(),'Add New Dashboard')]").wait_until_present
      @@ele = @browser.text_field(:id, "dashboard_name")
      @@ele.set("")
      click_save
      raise "Dash Board is creating without Name" unless @browser.span(:id, "dashboard_name-error").exists?
    end

    def enter_dashboard_name
      @@ele.set("Dishdash_51")
      click_save
    end

    def verify_flash_message
      verify_flashmessage = @browser.p(:xpath, "//div[2]/div/p")
      verify_flashmessage.wait_until_present
      if verify_flashmessage.exists?
        return "Dashboard created successfully"
      end 
    end


###########################################################################

    # def enter_blank_data
    #        @browser.input(:xpath, "//body/div[3]/div/div/div/div[2]/form/div[1]/div/div/input").wait_until_present
    #       @browser.input(:id, "dashboard_name").set("")
    #       end

    # def verify_blank_error_message
    #   verify_flashmessage = @browser.span(:xpath, "//div[3]/div/div/div/div[2]/form/div[1]/div/div/span")
    #   verify_flashmessage.wait_until_present
    #   if verify_flashmessage.exists?
    #     return "Name is required"
    #   end 
    # end

   #def verify_blank_error_message

#       def verify_manage_user
#         verify_manageuser = @browser.div(xpath: "//body/div[1]")
#         verify_manageuser.wait_until_present
#       if verify_manageuser.exists?
#        return "manageuser page exists"
#       end
#     end

#     def click_add_new_user
#       @browser.a(xpath: "//body/div[2]/div/div[2]/a").wait_until_present
#        @browser.a(xpath: "//body/div[2]/div/div[2]/a").click
#         end

#         def enter_all_the_data
#           @browser.h4(xpath: "//div[2]/div/div[3]/div/div/div/div/h4").wait_until_present
#          @browser.text_field(:id, "user_name").set("usera9")
#          @browser.text_field(:id, "user_email").set("usera9@yopmail.com")
#          @browser.text_field(:id, "user_password").set("123456")
#          @browser.text_field(:id, "password_confirmation").set("123456")
#        end


#        def click_save
#          @browser.input(:type, "submit").click
#          end
        

#         def verify_flash_message
#         verify_flashmessage = @browser.p(xpath: "//body/div[2]/div/p")
#         verify_flashmessage.wait_until_present
#         if verify_flashmessage.exists?
#         return "flash message is present"
#         end
#         end


# ######## Scenario: 2 #######

#        def leave_all_fields_blank
#         @browser.h4(xpath: "//div[2]/div/div[3]/div/div/div/div/h4").wait_until_present
#          @browser.text_field(:id, "user_name").set("")
#          @browser.text_field(:id, "user_email").set("")
#          @browser.text_field(:id, "user_password").set("")
#          @browser.text_field(:id, "password_confirmation").set("")
#        end

#       #  def view_error_message
#       #   view_errormessage = @browser.div(xpath: "//form/div[1]/div[4]/div").wait_until_present
#       #   if view_errormessage.exists?
#       #     return "error message is displayed"
#       #   end
#       # end




  end
end










     