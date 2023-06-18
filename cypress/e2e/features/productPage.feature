Feature:Product Page
	As a tester,i want to test Product page of swaglabs web application

	Background:
		Given User is on "product" page

	Scenario:Sorting products on "products" page
		And User should see "header" on the page
		And User should see "products" text on the page
		When User clicks on sorting field in upper right corner
		And User clicks one of possible sorting options "<options>"
		Then Products on page should be sorted by "<options>"
		Examples:
			| options                                             |
			| Name(A-Z),Name(Z-A),Price(low-high),Price(high-low) |

	Scenario:Product details appears properly
		And User should see "product image"
		And User should see "product name"
		And User should see "product description"
		And User should see "product price"
		And User should see "Add to cart" button


	Scenario:Redirecting to product detail page
		When User clicks on the products "<item>"
		Then User should be redirected to the "products detail" page

		Examples:
			| item  |
			| name  |
			| image |

Scenario: Adding products to cart
When: User clicks "Add to cart" button
Then: Product should be added to the cart
And "add to cart" button should change to "remove"

Scenario: Removing products from car
And User has product added to cart  
When User clicks on the "Remove" button
Then Product should be removed from cart
And "Remove" button should change to "Add to cart"