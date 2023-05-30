
class Page
    def initialize(driver)
        @driver = driver
        @wait = wait = Selenium::WebDriver::Wait.new(:timeout => 30)

        #Top Bar
        @top_bar = '#shopify-section-header > div:nth-child(4) > div.header-sticky-wrapper > div > div > header > div.page-width > div > div.header-item.header-item--logo > h1 > a'
        #Nav Bar
        @logo = '#shopify-section-header > div:nth-child(4) > div.header-sticky-wrapper > div > div > header > div.page-width > div > div.header-item.header-item--logo > h1 > a'
        @sesame_street_link = '#shopify-section-header > div:nth-child(4) > div.header-sticky-wrapper > div > div > header > div.page-width > div > div.header-item.header-item--navigation.text-center > ul > li:nth-child(1) > a'
        @pet_costumes_link = '#shopify-section-header > div:nth-child(4) > div.header-sticky-wrapper > div > div > header > div.page-width > div > div.header-item.header-item--navigation.text-center > ul > li:nth-child(2) > a'
        @pet_toys_link = '#shopify-section-header > div:nth-child(4) > div.header-sticky-wrapper > div > div > header > div.page-width > div > div.header-item.header-item--navigation.text-center > ul > li:nth-child(3) > a'
        @acct_link = '#shopify-section-header > div:nth-child(4) > div.header-sticky-wrapper > div > div > header > div.page-width > div > div.header-item.header-item--icons > div > div > a.site-nav__link.site-nav__link--icon.small--hide'
        @search_link = '#shopify-section-header > div:nth-child(4) > div.header-sticky-wrapper > div > div > header > div.page-width > div > div.header-item.header-item--icons > div > div > a.site-nav__link.site-nav__link--icon.js-search-header.js-no-transition'
        @cart_link = '#shopify-section-header > div:nth-child(4) > div.header-sticky-wrapper > div > div > header > div.page-width > div > div.header-item.header-item--icons > div > div > a.site-nav__link.site-nav__link--icon.js-drawer-open-cart.js-no-transition'
        #Footer - Products 
        #Footer - Support
        #Footer - About Us
        #Footer - Join Our Krewe!
        #Footer - Join Our Krewe!
        #Modal
        @modal_close = '.klaviyo-close-form'
        
        #Collections
        @crawfish_link = 'div.flex-grid__item:nth-child(2) > div:nth-child(1)'


    end


    def click_modal_close
        puts "Clicked Model Close"
        @wait.until{@driver.find_element(css:@modal_close).displayed?}
        return @driver.find_element(css:@modal_close).click
    end


    def click_crawfish_collection
        puts "Clicked Crawfish Collection"
        @wait.until{@driver.find_element(css:@crawfish_link).displayed?}
        return @driver.find_element(css:@crawfish_link).click   
    end

end

@page = Page.new(@driver)