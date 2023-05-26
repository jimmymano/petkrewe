require 'selenium-webdriver'
require 'test-unit'
#@wait = wait = Selenium::WebDriver::Wait.new(:timeout => 30)
class CartSideBar
    
    def initialize(driver)
        @driver = driver
        @wait = wait = Selenium::WebDriver::Wait.new(:timeout => 30)
        
    end
    
    def cart_text(cart_header) 
        @driver.find_element(css:cart_header).text
    end

    def cart_sub(cart_subtotal)
        @driver.find_element(xpath:cart_subtotal).text    
    end

    def click_cart_checkout_btn(checkout_btn)
        @driver.find_element(css:checkout_btn)
        @wait.until{@driver.find_element(css:'button.btn.btn--full.cart__checkout')}
        puts "Found Checkout Button"
        #@wait.until{@driver.find_element(css:checkout_btn).displayed?}
        return  @driver.find_element(css:checkout_btn).click
    end

end

@cart = CartSideBar.new(@driver)

