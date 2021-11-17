@Login
Feature: Tricentis Demo Web Shop

@Login_pass 
Scenario Outline: Login failure for Demo_Web_Shop 
	Given user navigates to LoginPage 
	When user enters "<Email>" and "<password>" then clicks on login 
	Then login is successful 
	Examples:
	|Email||password|
	|nishu@gmail.com| |haihello|
	
@EnterKey	
Scenario: Search for a product from search bar and add to cart
	Given User navigate to Login Page
	When User enters Email and Password then clicks on login button
    Then user navigates to Home page
    Given user enters the required product in search bar and clicks on search button
	When  clicks on Add to Cart for the first jewellry
	Then user should get notification

@CheckoutFail
Scenario: Failing to check out by not agreeing the terms of service
	Given User navigate to Login Page
	When User enters Email and Password then clicks on login button
    Then user navigates to Home page
    Given user enters the required product in search bar and clicks on search button
	When  clicks on Add to Cart for the first jewellry
	Then user should get notification
	Given User clicks on Shopping cart to navigate to shopping cart
	When user clicks checkout button without checking the Terms of Service checkbox
	Then user should get popup saying Please accept the Terms of Service before the next step	

@CheckoutPass
Scenario: Checking out from shopping cart page
	Given User navigate to Login Page
	When User enters Email and Password then clicks on login button
    Then user navigates to Home page
    Given user enters the required product in search bar and clicks on search button
	When  clicks on Add to Cart for the first jewellry
	Then user should get notification
	Given User clicks on Shopping cart to navigate to shopping cart
	When user checks the checkbox to agree terms of service and clicks on checkout button
	Then user should be able to navigate to checkout page
	
@ExistingBillingAddress
Scenario: user selecting billing address from existing address
	Given User navigate to Login Page
	When User enters Email and Password then clicks on login button
    Then user navigates to Home page
    Given user enters the required product in search bar and clicks on search button
	When  clicks on Add to Cart for the first jewellry
	Then user should get notification
	Given User clicks on Shopping cart to navigate to shopping cart
	When user checks the checkbox to agree terms of service and clicks on checkout button
	Then user should be able to navigate to checkout page
	Given user navigates to check out page
	When user selects the existing billing address and clicks on continue button
	Then user should be able to move to shipping address

@NewBillingAddress
Scenario: Successful in filling the new billing address
	Given User navigate to Login Page
	When User enters Email and Password then clicks on login button
    Then user navigates to Home page
    Given user enters the required product in search bar and clicks on search button
	When  clicks on Add to Cart for the first jewellry
	Then user should get notification
	Given User clicks on Shopping cart to navigate to shopping cart
	When user checks the checkbox to agree terms of service and clicks on checkout button
	Then user should be able to navigate to checkout page  
	When user enters valid billing address and clicks on continue button
	Then user should be able to move to shipping address	
	

@BillingAddressValidation
Scenario: Failure in moving to shipping address by leaving blank space in First name
	Given User navigate to Login Page
	When User enters Email and Password then clicks on login button
    Then user navigates to Home page
    Given user enters the required product in search bar and clicks on search button
	When  clicks on Add to Cart for the first jewellry
	Then user should get notification
	Given User clicks on Shopping cart to navigate to shopping cart
	When user checks the checkbox to agree terms of service and clicks on checkout button
	Then user should be able to navigate to checkout page
#	When user leaves the billing first name field empty and clicks continue button
#    Then user should get billing first name alert message  
#Scenario: Failure in moving to shipping address by leaving blank space in last name
     When user leaves the billing last name field empty and clicks continue button
     Then user should get billing last name alert message	 
#Scenario: Failure in moving to shipping address by leaving blank space in email
     When user leaves the billing email field empty and clicks continue button
     Then user should get billing email alert message	
#Scenario: Failure in moving to shipping address by leaving blank space in country     
     When user leaves the billing country field empty and clicks continue button
     Then user should get billing country alert message  
#Scenario: Failure in moving to shipping address by leaving blank space in city
    When user leaves the billing city field empty and clicks continue button
    Then user should get billing city alert message  
#Scenario: Failure in moving to shipping address by leaving blank space in city
    When user leaves the billing address field empty and clicks continue button
    Then user should get billing address alert message    	
#Scenario: Failure in moving to shipping address by leaving blank space in zip/postal code
    When user leaves the billing postal code field empty and clicks continue button
    Then user should get billing postal code alert message  	                     
#Scenario: Failure in moving to shipping address by leaving blank space in Phone number
    When user leaves the billing Phone number field empty and clicks continue button
    Then user should get billing phone number alert message	
    
    
@ExistingShippingAddress
Scenario: user selecting shipping address from existing address
	Given User navigate to Login Page
	When User enters Email and Password then clicks on login button
    Then user navigates to Home page
    Given user enters the required product in search bar and clicks on search button
	When  clicks on Add to Cart for the first jewellry
	Then user should get notification
	Given User clicks on Shopping cart to navigate to shopping cart
	When user checks the checkbox to agree terms of service and clicks on checkout button
	Then user should be able to navigate to checkout page
	When user selects the existing billing address and clicks on continue button
	Then user should be able to move to shipping address
	Given user moves to shipping address
	When user selects the existing shipping address and clicks on continue button
	Then user should be able to move to shipping method   
	
	
@NewShippingAddress
Scenario: Successful in filling the new billing address
	Given User navigate to Login Page
	When User enters Email and Password then clicks on login button
    Then user navigates to Home page
    Given user enters the required product in search bar and clicks on search button
	When  clicks on Add to Cart for the first jewellry
	Then user should get notification
	Given User clicks on Shopping cart to navigate to shopping cart
	When user checks the checkbox to agree terms of service and clicks on checkout button
	Then user should be able to navigate to checkout page 
	When user enters valid billing address and clicks on continue button
	Then user should be able to move to shipping address
	Given user moves to shipping address
	When user enters valid shipping address and clicks on continue button
	Then user should be able to move to shipping method		 



@ShippingAddressValidation
Scenario: Failure in moving to shipping method by leaving blank space in First name
	Given User navigate to Login Page
	When User enters Email and Password then clicks on login button
    Then user navigates to Home page
    Given user enters the required product in search bar and clicks on search button
	When  clicks on Add to Cart for the first jewellry
	Then user should get notification
	Given User clicks on Shopping cart to navigate to shopping cart
	When user checks the checkbox to agree terms of service and clicks on checkout button
	Then user should be able to navigate to checkout page
	Given user navigates to check out page
	When user selects the existing billing address and clicks on continue button
	Then user should be able to move to shipping address
	Given user moves to shipping address
	When user leaves the shipping first name field empty and clicks continue button
    Then user should get shipping first name alert message
#Scenario: Failure in moving to shipping method by leaving blank space in last name
     When user leaves the shipping last name field empty and clicks continue button
     Then user should get shipping last name alert message	
#Scenario: Failure in moving to shipping method by leaving blank space in email
     When user leaves the shipping email field empty and clicks continue button
     Then user should get shipping email alert message	
#Scenario: Failure in moving to shipping method by leaving blank space in country     
     When user leaves the shipping country field empty and clicks continue button
     Then user should get shipping country alert message   
#Scenario: Failure in moving to shipping method by leaving blank space in city
    When user leaves the shipping city field empty and clicks continue button
    Then user should get shipping city alert message
#Scenario: Failure in moving to shipping method by leaving blank space in city
    When user leaves the shipping address field empty and clicks continue button
    Then user should get shipping address alert message    	
#Scenario: Failure in moving to shipping method by leaving blank space in zip/postal code
    When user leaves the shipping postal code field empty and clicks continue button
    Then user should get shipping postal code alert message	                     
#Scenario: Failure in moving to shipping method by leaving blank space in Phone number
    When user leaves the shipping Phone number field empty and clicks continue button
    Then user should get shipping phone number alert message	
    
    
@InStorePickup
Scenario: user selecting the type of shipping address
    Given User navigate to Login Page
	When User enters Email and Password then clicks on login button
    Then user navigates to Home page
    Given user enters the required product in search bar and clicks on search button
	When  clicks on Add to Cart for the first jewellry
	Then user should get notification
	Given User clicks on Shopping cart to navigate to shopping cart
	When user checks the checkbox to agree terms of service and clicks on checkout button
	Then user should be able to navigate to checkout page
	Given user navigates to check out page
	When user selects the existing billing address and clicks on continue button
	Then user should be able to move to shipping address
	Given user moves to shipping address
	When user select Instore pickup and clicks on continue button
	Then user should be able to move to shipping method
	
@ShippingMethod
Scenario: Selecting a shipping method
    Given User navigate to Login Page
	When User enters Email and Password then clicks on login button
    Then user navigates to Home page
    Given user enters the required product in search bar and clicks on search button
	When  clicks on Add to Cart for the first jewellry
	Then user should get notification
	Given User clicks on Shopping cart to navigate to shopping cart
	When user checks the checkbox to agree terms of service and clicks on checkout button
	Then user should be able to navigate to checkout page
	Given user navigates to check out page
	When user selects the existing billing address and clicks on continue button
	Then user should be able to move to shipping address
	Given user moves to shipping address
	When user selects the existing shipping address and clicks on continue button
	Then user should be able to move to shipping method     
 	Given user moves to shipping method
	When user selects required shipping method and clicks on continue button
	Then user should be able to move to payment method    
		