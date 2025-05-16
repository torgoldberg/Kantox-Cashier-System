Feature: Coffee Percentage Discount
    As a user of the Cashier System, When I buy more than a certain quantity of Coffee, I expect to pay a percentage of the original price per Coffee.

    Background:
        Given the unit price of "CF1" is £11.23
        And "CF1" has a FractionPriceRule (threshold: 3, percent: 66%)
    
    Scenario: Buy 2 Coffees
        Given the cart contains 2 "CF1"
        When the user checks out
        Then the total should be £22.46

    Scenario: Buy 3 Coffees
        Given the cart contains 3 "CF1"
        When the user checks out
        Then the total should be £22.26

    Scenario: Buy 4 Coffees
        Given the cart contains 4 "CF1"
        When the user checks out
        Then the total should be £29.68