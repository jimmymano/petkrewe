class InfoPage
    def initialize(driver)
        #Shipping Info
        @driver = driver
        @wait = wait = Selenium::WebDriver::Wait.new(:timeout => 30)
        @email = '#email'
        @firstname = '#TextField1'
        @lastname = '#TextField2'
        @address = '#address1'
        @city = '#TextField6'
        @zipcode = '#TextField7'

        #Cart Info
        #cart_item
        #discount_field
        #subtotal
        #total
        
    end

    def set_contact_email(email)
        @wait.until{@driver.find_element(css:@email).displayed?}
        @driver.find_element(css:@email).click
       return @driver.action.send_keys(email).perform
    end

    def set_first_name(firstname)
        @wait.until{@driver.find_element(css:@firstname).displayed?}
        @driver.find_element(css:@firstname).click
        return @driver.action.send_keys(firstname).perform
    end
    
    def set_last_name(lastname)
        @wait.until{@driver.find_element(css:@lastname).displayed?}
        @driver.find_element(css:@lastname).click
        return @driver.action.send_keys(lastname).perform
    end
    
    def set_address(address1)
        @wait.until{@driver.find_element(css:@address).displayed?}
        @driver.find_element(css:@address).click
        return @driver.action.send_keys(address1).perform
    end

    def set_city(city)
        @wait.until{@driver.find_element(css:@city).displayed?}
        @driver.find_element(css:@city).click
        return @driver.action.send_keys(city).perform
    end

    def set_zip_code(zipcode)
        @wait.until{@driver.find_element(css:@zipcode).displayed?}
        @driver.find_element(css:@zipcode).click
        return @driver.action.send_keys(zipcode).perform
    end

end

@info_page = InfoPage.new(@driver)