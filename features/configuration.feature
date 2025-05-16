Feature: Loading Configuration from YAML Files
    As a developer or QA, I want the system to correctly load product and rule data from YAML files, So that the Cashier System has the necessary information to function.

    Scenario: Load products from default YAML file path
        Given the products YAML file "priv/assets/products.yml" exists and is valid
        When the system initializes
        Then the system should load the product data successfully

    Scenario: Load products from custom YAML file path
        Given the products YAML file is located at "config/custom_products.yml" and is valid
        When the system initializes
        Then the system should load the product data successfully

    Scenario: Load rules from default YAML file path
        Given the rules YAML file "priv/assets/rules.yml" exists and is valid
        When the system initializes
        Then the system should load the rules data successfully

    Scenario: Load rules from custom YAML file path
        Given the rules YAML file is located at "config/custom_rules.yml" and is valid
        When the system initializes
        Then the system should load the rules data successfully
