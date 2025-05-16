Feature: Checkout total calculation
    As a user of the Cashier System, I want the system to correctly calculate the total price of the items in my cart so that I know the final amount I need to pay.

    Scenario: Calculate total price for a single product
        Given the cart contains 1 "SR1"
        And the unit price of "SR1" is £5.00
        When the user checks out
        Then the total price should be £5.00

    Scenario: Calculate total price for multiple units
        Given the cart contains 3 "SR1"
        And the unit price of "SR1" is £5.00
        When the user checks out
        Then the total price should be £15.00

    Scenario: Calculate total price for an empty cart
        Given the cart is empty
        When the user checks out
        Then the total price should be £0.00
