module AUTOMATIONPRACTICE
    class Homepage < SitePrism::Page
        set_url "/index.php"
        element :signin_link , ".login"
    
        def signup 
            signin_link.click
        end
    end
end