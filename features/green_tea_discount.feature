Feature: Green Tea Discount
    As a user of the Cashier System, When there is a "buy one get one free" rule applied to Green Tea, I expect to receive a free Green Tea for every Green Tea I purchase.

    Background:
        Given the unit price of "GR1" is £3.11
        And "GR1" has a FreeRule discount (buy 1, get 1 free)
        
    Scenario: Buy 2 Green Teas
        Given the cart contains 2 "GR1"
        When the user checks out
        Then the total should be £3.11

    Scenario: Buy 3 Green Teas
        Given the cart contains 3 "GR1"
        When the user checks out
        Then the total should be £6.22

    Scenario: Buy 4 Green Teas
        Given the cart contains 4 "GR1"
        When the user checks out
        Then the total should be £6.22