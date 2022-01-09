require 'spec_helper'

feature "automation practise test" , type: :feature do
    scenario "Try login do " do
        #load application
        homepage = AUTOMATIONPRACTICE::Homepage.new
        homepage.load 
        homepage.signin_link.click
        #add login credentials
        loginpage= AUTOMATIONPRACTICE::Loginpage.new
        loginpage.load
        loginpage.email_input.set "joey@gmail.com"
        loginpage.password_input.set "password"
        loginpage.login_btn.click
        #search for tshirts 
        homepage.search_bar.set "t shirt"
        homepage.search_btn.click
        binding.pry
    end

end