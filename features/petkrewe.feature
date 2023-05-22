Feature: Purchase

    As a customer 
    I want to purchase
    So I can receives products


Scenario Outline: Shop Lobster & Crawfish Collection
Given I am on the site
When I click the modal close

And I click the Shop Our Lobster & Crawfish Collection button

And I click Lobster dog costume

And I click Add To Cart

Then I should see Cart Sidebar

And I should see Subtotal

And I click Checkout

And I enter "<email>" in the email field

And I enter "<firstname>" in the First Name field

And I enter "<lastname>" in the Last Name field

And I enter "<address1>" in the Address field

And I enter "<city>" in the City field

And I enter "<Zipcode>" in the ZIP field

And I click Continue to Shipping button

And I click Standard Shipping button

Then I should see Continue to Payment Button

Examples:
    | email | firstname | lastname | address1 | city | Zipcode |
    | alberteinstein@qa.team | Albert | Einstein | 123 Test | New Orleans | 70130 |
  

    


