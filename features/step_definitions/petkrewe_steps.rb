#1.Landing Page
Given('I am on the site') do
  @driver.get'https://petkrewe.com/'
  @driver.manage.window.move_to(1600,0)
  @driver.manage.window.maximize
  expect(@driver.title).to include 'Pet Krewe | Dog Costumes and Pet Costumes for Halloween'
  puts "Navigate to #{@driver.title}" 
end

When('I click the modal close') do
  puts "Closed modal"
  @wait.until{@driver.find_element(css:@modal_close).displayed?}
  @driver.find_element(css:@modal_close).click
end

When('I click the Shop Our Lobster & Crawfish Collection button') do 
  puts "Clicked Shop Now"
  @wait.until{@driver.find_element(css:@crawfish_link).displayed?}
  @driver.find_element(css:@crawfish_link).click   
end

#3? PDP
When('I click Lobster dog costume') do  
  puts "Clicked Product"
  @driver.find_element(css:@lobster_link).click
end

When('I click Add To Cart') do
  @driver.find_element(css:@lobster_add).click
  sleep 3
end

#1.Cart
Then('I should see Cart Sidebar') do
  cart_text = @driver.find_element(css:@cart_header).text
  puts "#{cart_text}"
  
  #expect(cart_text).to eq('CART')
  expect(cart_text).to eq('CART') 
end

Then('I should see Subtotal') do
  cart_sub = @driver.find_element(xpath:@cart_subtotal).text
  #@wait.until{cart_sub.displayed?}
  puts "#{@cart_sub}"
  expect(cart_sub).to eq('SUBTOTAL')
end

When('I Add Sesame Street Hoodie To Cart') do
  @driver.find_element(css:@sesame_add).click
end

When('I click Checkout') do
  @wait.until{@driver.find_element(css:@checkout_btn).displayed?}
  @driver.find_element(css:@checkout_btn).click
  #@info = InfoPage.new(@driver)
end

#2.Info
When('I enter "<email>" in the email field') do |email|
  
  @wait.until{@driver.find_element(css:'#email').displayed?}
  @driver.find_element(css:'#email').click
  @driver.action.send_keys(email).perform
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

#3.Shipping

When('I click Continue to Shipping button') do 
    @driver.find_element(css:@continue_to_shipping).click
  end
  
  When('I click Standard Shipping button') do 
    @wait.until{@driver.find_element(css:@shipping_header).displayed?}
    sleep 3
  end
  
  Then('I should see Continue to Payment Button') do 
    payment_btn = @driver.find_element(css:@payment_btn)
    @wait.until{payment_btn.displayed?}
    sleep 3
    payment_btn.click
    sleep 3
  end
  When('I click Continue to Payment button') do 
    @wait.until{@driver.find_element(css:@shipping_header).displayed?}
    if @driver.find_element(css:'button.rqC98:nth-child(1)')
      puts 'Continue to payment button found'  
    else
      puts "Continue to payment button not found"
    end
    
    @driver.find_element(xpath:@continue_to_payment).click
  end
  
  #4.Payment
  
  
  When('I click the Shop Dog Costumes button') do 
    puts "Clicked Shop Now"
  @wait.until{@driver.find_element(css:@shop_dog_link).displayed?}
  @driver.find_element(css:@shop_dog_link).click   
end

When('I click Sesame Street Pet Hoodies costume') do  
  puts "Clicked Product"
  @driver.find_element(css:@sesame_link).click
end

