#config file


def capybara_application_url_set_up app_url="http://automationpractice.com/"
    Capybara.app_host = app_url
    puts "Hosting #{Capybara.app_host}"
  end
  
  
  def capybara_test_configuration
   driver = ENV['DRIVER']
   case driver
   when "chrome_headless"
     Capybara.current_driver = :selenium_chrome_headless
   when "firefox"
     Capybara.current_driver = :selenium
   when "firefox_headless"
      Capybara.current_driver = :selenium_headless
    else
     Capybara.default_driver = :selenium_chrome
  end
  end
  
  def close_capybara_current_session
    #All Capybara does when you call driver.quit is call quit on the Selenium::Webdriver object
    Capybara.current_session.driver.quit
  end
  