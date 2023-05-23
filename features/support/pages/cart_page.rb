
class CartPage

    def initialize(driver)
        @driver = driver
    end
    
    def cart_text(cart_header) 
        @driver.find_element(css:cart_header).text
    end

    def cart_sub(cart_subtotal)
        @driver.find_element(xpath:cart_subtotal).text    
    end

end

@cart = CartPage.new(@driver)

