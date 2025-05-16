Feature: Cart management
    As a user of the Cashier System, I want to be able to add and remove products from my cart, So that I can manage my shopping.

    Scenario: Add a single product to the cart
        Given the cart is empty
        And the following products are available:
        | Product Code | Name         | Price |
        | GR1          | Green Tea    | 3.11  |
        When the user adds 1 "GR1" to the cart
        Then the cart should contain 1 "GR1"

    Scenario: Add multiple products to the cart from the same type
        Given the cart is empty
        And the following products are available:
        | Product Code | Name         | Price |
        | CF1          | Coffee       | £11.23 |
        When the user adds 2 "CF1" to the cart
        Then the cart should contain 2 "Coffee"

    Scenario: Add multiple products to the cart from different types
        Given the cart is empty
        And the following products are available:
        | Product Code | Name         | Price |
        | CF1          | Coffee       | £11.23 |
        | SR1          | Strawberries | £5.00  |
        When the user adds 2 "CF1" to the cart
        And the user adds 2 "SR1" to the cart
        Then the cart should contain 2 "Coffee"
        And the cart should contain 2 "Strawberries"

    Scenario: Remove products from the cart
        Given the cart contains 2 "GR1"
        When the user removes 1 "GR1"
        Then the cart should contain 1 "GR1"
