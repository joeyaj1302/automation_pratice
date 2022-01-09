require 'spec_helper'

feature "automation practise test" , type: :feature do
    scenario "Try login do " do
        homepage = AUTOMATIONPRACTICE::Homepage.new
        homepage.load 
        homepage.signin_link.click
        loginpage= AUTOMATIONPRACTICE::Loginpage.new
        loginpage.load
        loginpage.email_input.set "joey@gmail.com"
        loginpage.password_input.set "password"
        loginpage.login_btn.click
        binding.pry
    end

end