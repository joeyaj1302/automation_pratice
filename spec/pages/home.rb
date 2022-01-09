module AUTOMATIONPRACTICE
    class Homepage < SitePrism::Page
        set_url "/index.php"
        element :signin_link , ".login"
        element :search_bar , "#search_query_top"
        element :search_btn , ".button-search"
        def signup 
            signin_link.click
        end
    end
end