$LOAD_PATH << './lib/watir-page-helper/pages/dishdash/'
require 'watir-page-helper'

module WatirPageHelper::Dishdash
  module LoginPage
    extend WatirPageHelper::ClassMethods

      direct_url "http://st.dishdashboard.qwinixtech.com/"

    def verify_login_screen
        @@verify_loginpage = @browser.h3(:xpath, "//div[1]/div/form/h3")
        @@verify_loginpage.wait_until_present
        if @@verify_loginpage.exists?
        return "loginpage exists"
        else
        raise "Landing Page is not exists"
        end 
    end

    def enter_valid_credentials
        @@ele_email.set("admin@qwinixtech.com")
        @@ele_pwd.set("Password@1")
        @@login_btn.click 
    end

    def enter_invalid_credentials
        @@ele_email = @browser.text_field(:id, "email")
        @@ele_pwd = @browser.text_field(:id, "password")
        @@login_btn = @browser.button(:type, "submit")
         @@ele_email.set("")
         @@ele_pwd.set("")
         @@login_btn.click 
         raise "User can login with empty credentials" unless @@verify_loginpage.exists?
         @@ele_email.set("admin@qwinixtech.com")
         @@ele_pwd.set("")
         @@login_btn.click 
         raise "User can login with without password" unless @@verify_loginpage.exists?
         @@ele_email.set("")
         @@ele_pwd.set("Password@1")
         @@login_btn.click 
         raise "User can login without username" unless @@verify_loginpage.exists?
         @@ele_email.set("admin")
         @@ele_pwd.set("abcdef")
         @@login_btn.click 
         raise "User can login with invalid_credentials" unless @@verify_loginpage.exists?
    end

    # def click_sign_in
    #    @@login_btn = @browser.button(:type, "submit")
    #    @@login_btn.click 
    # end
    
    def verify_login_message
        @@msg = @browser.p(:xpath, "//body/div[2]/div/p")
        @@msg.wait_until_present
        if @@msg.exists?
            return "User is logged in successfully"
        end
    end


end
end









      
     
    # def verify_manage_user
    #    verify_manageuser = @browser.div(xpath: "//body/div[1]")
    #    verify_manageuser.wait_until_present
    #    if verify_manageuser.exists?
    #      return "manageuser page exists"
    #    end
    #  end

    # def click_manage_dashboard
    #   @browser.a(xpath: "//div[2]/ul[1]/li[1]/a").wait_until_present
    #   @browser.a(xpath: "//div[2]/ul[1]/li[1]/a").click
    # end

    # def click_add_new_dashboard
    #   @browser.a(xpath: "//div[2]/div/ul/div[1]/a[1]").wait_until_present
    #   @browser.a(xpath: "//div[2]/div/ul/div[1]/a[1]").click
    # end

    # def enter_all_the_data
    #   @browser.h4(xpath: "//div[2]/div/ul/div[2]/div[2]/div/div/div/div/h4").wait_until_present
    #   @browser.text_field(:id, "dashboard_name").set("dashboard6")
    #   end

# def click_save
#   @browser.input(xpath: "//div[2]/div[2]/div/div/div/form/div[2]/input").wait_until_present
#   @browser.input(xpath: "//div[2]/div[2]/div/div/div/form/div[2]/input").click
# end

# def verify_flash_message
#   verify_flashmessage = @browser.p(xpath: "//div[2]/div/p")
#   verify_flashmessage.wait_until_present
#   if verify_flashmessage.exists?
#     return "flashmessage is present"
#   end 
# end

# end
# end







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










     