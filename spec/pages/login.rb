module AUTOMATIONPRACTICE
    class Loginpage < SitePrism::Page
        set_url "/index.php?controller=authentication&back=my-account"
        element :email_input , "input#email"
        element :password_input , "input#passwd"
        element :login_btn ,  "button#SubmitLogin"
    
        def signup 
            signin_link.click
        end
    end
end


