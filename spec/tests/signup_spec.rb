require 'spec_helper'

feature "automation practise test" , type: :feature do
    scenario "Try login do " do
        
        homepage = AUTOMATIONPRACTICE::Homepage.new
        homepage.load 
        homepage.signin_link.click
        binding.pry
    end

end