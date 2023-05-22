require 'selenium-webdriver'
require 'test-unit'
options = Selenium::WebDriver::Options.chrome
@driver = driver = Selenium::WebDriver.for:chrome, options:options
options.add_argument('--disable-web-security')
options.add_argument("--disable-blink-features")
options.add_argument("--disable-blink-features=AutomationControlled")
options.add_argument("--disable-translate")
options.add_argument("--disable-popup-blocking")
options.add_argument("--disable-extensions")
options.add_argument("--ignore-certificate-errors")
options.add_argument("--disable-gpu")
options.add_argument("--no-sandbox")
options.add_argument("--no-sandbox")
options.add_argument("--incognito")
options.add_preference("credentials_enable_service", false)
options.add_preference("password_manager_enabled", false)
options.accept_insecure_certs = true
@wait = wait = Selenium::WebDriver::Wait.new(:timeout => 30)


Before do |scenario|
    
    @driver = Selenium::WebDriver.for:chrome, options:options
    @wait = wait = Selenium::WebDriver::Wait.new(:timeout => 30)
    @payment_btn ='#Form2 > div:nth-child(1) > div > div > div.oQEAZ.WD4IV > div:nth-child(1) > button'
    @username =     '#username'
    @password =     '#password'
    @loginBtn =     '#nco_login_submit'
    @modal_close = '.klaviyo-close-form'
    @modal_close = '.klaviyo-close-form'
    @parties_and_orders = '#ncosidemenu > div > ul > li:nth-child(3) > a'
    @order_history = '#ncosidemenu > div > ul > li:nth-child(3) > ul > li:nth-child(5) > a'
    @shipping_icon = '#order_history > tbody > tr:nth-child(3) > td.text-center.grid-width-3 > a > span > span.icon-truck.font-30.hide-for-small-only'
    @tracking_number = '#shipmentTrackingModal > div:nth-child(2) > div.medium-12.columns.shipment-wrapper > div.row.odd > div:nth-child(4) > a'
    @lobster_link = 'div.grid-product:nth-child(1) > div:nth-child(1) > a:nth-child(1) > div:nth-child(2)'
    @lobster_add = '#AddToCart-4684332564567'
    @crawfish_link = 'div.flex-grid__item:nth-child(2) > div:nth-child(1)'
    @cart_header = '#CartDrawer > div.drawer__fixed-header > div > div.h2.drawer__title'
    @cart_subtotal = '//*[@id="CartContainer"]/form/div[2]/div/div[1]/p'
    @checkout_btn = 'button.btn--full:nth-child(3)'
    @continue_to_shipping = 'button.rqC98:nth-child(1)'
    @shipping_header = '#step-section-primary-header'
    @continue_to_payment = '/html/body/div[1]/div/div/div/div[1]/div/div[2]/div/div/div/div[2]/div/div/div/main/form/div[1]/div/div/div[2]/div[1]/button'
    @shop_dog_link = '#shopify-section-1574811335810 > div > div > div > div > div.flex-grid__item.flex-grid__item--33.flex-grid__item--1574811515673.type-advanced > div > a'
    @sesame_link = '#CollectionSection > div.grid.grid--uniform.grid--collection.small--grid--flush > div:nth-child(1) > div > a'
    @sesame_add = '#AddToCartText-4169549447255'

end


After do
  sleep 3
end