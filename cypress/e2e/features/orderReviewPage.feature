Feature: Order Review Page

As a tester,i want to test Product page of swaglabs web application

	Background:
		Given User is on "order review" page
Scenario: Viewing the order review page with no items added
When no items have been added to the cart
Then I should see a message indicating that my cart is empty
And I should not see any item details
And I should not see any subtotal or total information
And I should see a button to continue shopping

Scenario: Removing products from "your cart" page
And User has product added to cart
When User clicks "remove" button
Then Product should be removed from "Your cart"

Scenario: Functionality of "Continue shopping" button
When User clicks "Continue shopping" button
Then User should be redirected to "Products" page

Scenario: Functionality of "Checkout" button
When User clicks "Checkout" button
Then User should be redirected to "CHECKOUT: YOUR INFORMATION" page