# Kantox-Cashier-System

## 📌 Overview

This repository contains structured test cases for the Kantox Cashier System.

- Tests are written in [Gherkin](https://cucumber.io/docs/gherkin/) format
- Organized by testing type (Functional, Edge Cases, Negative, etc.)

## 📂 Structure

kantox-cashier-system/
├── features/
│ ├── cart_management.feature
│ ├── checkout_totals.feature
│ ├── green_tea_discount.feature
│ ├── strawberries_bulk_price.feature
│ ├── coffee_percentage_discount.feature
│ ├── invalid_products.feature
│ └── configuration.feature
└── README.md

### Cashier System

Simple cashier function that adds products to a cart and displays the total price. The following products are registered:

| Product Code | Name         | Price  |
| ------------ | ------------ | ------ |
| GR1          | Green Tea    | £3.11  |
| SR1          | Strawberries | £5.00  |
| CF1          | Coffee       | £11.23 |

**Special Rules**

- Buy one get one free
- Buy > N products, pay X price per product
- Buy > N products, pay X% of the original price

**Products and Discount Rules**
The project doesn't connect to a database, it reads both the products and rules from a YAML file.
The default location of the file is priv/assets/products.yml and priv/assets/rules.yml, this can be changed in the Configuration.
Currently there are only 3 types of configurable discount rules:

- FreeRule (buy N get N free)
- ReducedPriceRule (buy more than N pay a different price)
- FractionPriceRule (buy more than N, pay a percentage of the original price)

## 🤖 Automation

These test cases are ready to be integrated with a BDD test runner like:

- Behave (Python)
- Cucumber (Ruby/Java)
- SpecFlow (.NET)
