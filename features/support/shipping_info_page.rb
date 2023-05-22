=begin 
class InfoPage
    def initialize(driver)
        @driver = driver
    end

    #Contact Information
    @email = '#email'
    @firstname = '#TextField1'
    @lastname = '#TextField'
    @address1 = '#address1'
    @city = '#TextField6'
    @zipcode = '#TextField7'

    #Cart 

    #items
    #discount field
    #subtotal
    #shiping
    #estimated_tax
    #total

end

#initialize is called when we create a new object of this class and all params are passed through
#the @shipping_info will call our initialize method
#this variable is called an instance variable because it calls our initialize method
#ARGUMENTS ARE PASSED FROM THE SCRIPT
@info = InfoPage.new(@driver)

def set_shipping_info
    
end



When('I enter {string} in the email field') do |email|
    @wait.until{@driver.find_element(css:'#email').displayed?}
    @driver.find_element(css:'#email').click
    @driver.action.send_keys(email).perform
  end
  
  When('I enter {string} in the First Name field') do |firstname|
    @driver.find_element(css:'#TextField1').click
    @driver.action.send_keys(firstname).perform
  end
  
  When('I enter {string} in the Last Name field') do |lastname|
    @driver.find_element(css:'#TextField2').click
    @driver.action.send_keys(lastname).perform
  end
  
  When('I enter {string} in the Address field') do |address1|
    @driver.find_element(css:'#address1').click
    @driver.action.send_keys(address1).perform
  end
  
  When('I enter {string} in the City field') do |city|
    @driver.find_element(css:'#TextField6').click
    @driver.action.send_keys(city).perform
  end
  
  
  When('I enter {string} in the ZIP field') do |zipcode|
    @driver.find_element(css:'#TextField7').click
    @driver.action.send_keys(zipcode).perform
  end
=end