Feature: Cash withdrawal
  Scenario: Successful withdrawal from an account in credit
    Given I have $100 in my account
    When I request $20
    Then $20 should be dispensed
    * I have deposited $10 in my Checking Account
    * I have deposited $500 in my Savings Account
    * I transfer $500 from my Savings Account into my Checking Account
    * the balance of the Checking Account should be $510
    * the balance of the Savings Account should be $0
    * I have 1 cucumber in my basket
    * I have 256 cucumbers in my basket
    * I visit the homepage
    * I go to the homepage
