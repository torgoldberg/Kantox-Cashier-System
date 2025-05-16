Feature: Strawberries Bulk Price
    As a user of the Cashier System, When I buy more than a certain quantity of Strawberries, I expect to pay a reduced price per Strawberry.

    Background:
        Given the unit price of "SR1" is £5.00
        And "SR1" has a ReducedPriceRule (threshold: 3, price: £4.50)

    Scenario: Buy 2 Strawberries
        Given the cart contains 2 "SR1"
        When the user checks out
        Then the total should be £10.00

    Scenario: Buy 3 Strawberries
        Given the cart contains 3 "SR1"
        When the user checks out
        Then the total should be £13.50

    Scenario: Buy 4 Strawberries
        Given the cart contains 4 "SR1"
        When the user checks out
        Then the total should be £18.00