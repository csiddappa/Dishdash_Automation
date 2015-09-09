$LOAD_PATH << './lib/watir-page-helper/pages/dishdash/'
require 'watir-page-helper'

module WatirPageHelper::Dishdash
  module DashboardPage
    extend WatirPageHelper::ClassMethods

      direct_url "http://st.dishdashboard.qwinixtech.com/"
     
    def verify_manage_dashboardpage  
       verify_manageboard = @browser.div(:xpath, "//div[2]/div/div[3]/div[2]/div[2]/div[1]")
       verify_manageboard.wait_until_present
       if verify_manageboard.exists?
         return "manageboard page exists"
       end
     end
   

    def click_add_new_dashboard
      @browser.a(:xpath, "//div[2]/div/div[3]/div[1]/a").wait_until_present  
      @browser.a(:xpath, "//div[2]/div/div[3]/div[1]/a").click
    end

    def enter_dashboard_name
       @browser.input(:xpath, "//body/div[3]/div/div/div/div[2]/form/div[1]/div/div/input").wait_until_present
      @browser.text_field(:id, "dashboard_name").set("dashboard11o")
      end

def click_save
  @browser.input(:xpath, "//div[2]/form/div[2]/input").click
  
end

def verify_flash_message
  verify_flashmessage = @browser.p(:xpath, "//body/div[2]/div/p")
  verify_flashmessage.wait_until_present
  if verify_flashmessage.exists?
    return "Dashboard created successfully"
  end 
end

end
end


###########################################################################

def enter_blank_data
       @browser.input(:xpath, "//body/div[3]/div/div/div/div[2]/form/div[1]/div/div/input").wait_until_present
      @browser.text_field(:id, "dashboard_name").set(" ")
      end

def verify_blank_error_message
  verify_flashmessage = @browser.span(:xpath, "//div[3]/div/div/div/div[2]/form/div[1]/div/div/span")
  verify_flashmessage.wait_until_present
  if verify_flashmessage.exists?
    return "Name is required"
  end 
end

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





#       end
#     end










     