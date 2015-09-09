# $LOAD_PATH << './lib/watir-page-helper/pages/dishdash/'
# require 'watir-page-helper'

# module WatirPageHelper::Dishdash
#   module NewuserPage
#     extend WatirPageHelper::ClassMethods

#       direct_url "http://st.dishdashboard.qwinixtech.com/"
     

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
#          @browser.text_field(:id, "user_name").set("usera17")
#          @browser.text_field(:id, "user_email").set("usera17@yopmail.com")
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










#      