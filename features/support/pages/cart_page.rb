=begin
class CartPage
    def initialize(browser)
        @browser = browser
    end
    @cart_header = '#CartDrawer > div.drawer__fixed-header > div > div.h2.drawer__title'
    cart_text = @driver.find_element(css:@cart_header).text
end

@cart = CartPage.new(@driver)

def cart_text
    
end
=end