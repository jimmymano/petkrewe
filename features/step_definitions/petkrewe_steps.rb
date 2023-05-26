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

#2 Collections/Categories
When('I click the Shop Our Lobster & Crawfish Collection button') do 
  puts "Clicked Shop Now"
  @wait.until{@driver.find_element(css:@crawfish_link).displayed?}
  @driver.find_element(css:@crawfish_link).click   
end
#3.Product Detail Page
When('I click Lobster dog costume') do  
  puts "Clicked Product"
  @driver.find_element(css:@lobster_link).click
end

When('I click Add To Cart') do
  @driver.find_element(css:@lobster_add).click
  sleep 3
  @cart = CartSideBar.new(@driver)
end

#4.Cart Sidebar Verification
Then('I should see Cart Sidebar') do
  puts "ADDED TO #{@cart.cart_text(@cart_header) }"
  expect(@cart.cart_text(@cart_header)).to eq('CART') 
end

Then('I should see Subtotal') do
  expect(@cart.cart_sub(@cart_subtotal)).to eq("SUBTOTAL")
end

When('I Add Sesame Street Hoodie To Cart') do
  @driver.find_element(css:@sesame_add).click
end

When('I click Checkout') do
  @cart.click_cart_checkout_btn(@checkout_btn)
  @info = InfoPage.new(@driver)
end

#5.Info

When('I enter {string} in the email field') do |email|
  @info.set_contact_email(email)
end

When('I enter {string} in the First Name field') do |firstname|
  @info.set_first_name(firstname)
end

When('I enter {string} in the Last Name field') do |lastname|
 @info.set_last_name(lastname)
end

When('I enter {string} in the Address field') do |address1|
  @info.set_address(address1)
end

When('I enter {string} in the City field') do |city|
  @info.set_city(city)
end


When('I enter {string} in the ZIP field') do |zipcode|
  @info.set_zip_code(zipcode)
end

#3.Shipping

When('I click Continue to Shipping button') do 
    @driver.find_element(css:@continue_to_shipping).click
  end
  
  When('I click Standard Shipping button') do 
    @wait.until{@driver.find_element(css:@shipping_header).displayed?}
    sleep 4
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

