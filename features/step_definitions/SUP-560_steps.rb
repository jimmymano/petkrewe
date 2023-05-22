Given('I am on NCO') do
    @driver.get'https://qa1.biz/en_US/consultant/login'
    #@driver.manage.window.move_to(1600,0)
    @driver.manage.window.maximize
  end

  When('I login') do
    puts "Logging In..."
    
    @driver.find_element(css:@username).click
    @driver.action.send_keys('3100151').perform
    @driver.find_element(css:@password).click
    @driver.action.send_keys('Hamf1st3d').perform
    @driver.find_element(css:@loginBtn).click
  end

  When('I Click Parties & Orders') do
    puts "Clicking Parties & Orders..."
    @driver.find_element(css:@parties_and_orders).click
  end  

  When('I Click Order History') do
    puts "Clicking Order History..."

    @wait.until{@driver.find_element(css:@order_history).displayed?}
    @driver.find_element(css:@order_history).click
  end  

  When('I Click Shipping Icon') do
    puts "Clicking Shipping Icon..."
    @wait.until{@driver.find_element(css:@shipping_icon).displayed?}
    @driver.find_element(css:@shipping_icon).click
  end  

  When('I Click Tracking Number') do
    puts "Clicking Tracking Number..."
    @wait.until{@driver.find_element(css:@tracking_number).displayed?}
    @driver.find_element(css:@tracking_number).click
  end  