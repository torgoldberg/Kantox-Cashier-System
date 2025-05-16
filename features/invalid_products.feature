Feature: Invalid Product Handling
    As a user of the Cashier System, I want the system to handle invalid product inputs gracefully, So that I don't encounter errors or unexpected behavior.

    Scenario: Attempt to add a non-existent product
        Given the cart is empty
        When the user adds 1 "hello" to the cart
        Then an error message "Product not found" should be displayed
        And the cart should remain empty

    Scenario: Attempt to add a product with an invalid quantity
        Given the cart is empty
        Given the following products are available:
        | Product Code | Name        | Price |
        | GR1          | Green Tea   | 3.11  |
        When the user adds 0 "GR1" to the cart
        Then an error message "Invalid quantity" should be displayed
        And the cart should remain empty

    Scenario: Attempt to add a product with negative quantity
        Given the cart is empty
        Given the following products are available:
        | Product Code | Name        | Price |
        | GR1          | Green Tea   | 3.11  |
        When the user adds -1 "GR1" to the cart
        Then an error message "Invalid quantity" should be displayed
        And the cart should remain empty