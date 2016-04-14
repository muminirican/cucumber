@withdraw
Feature: Cash withdrawal
  Scenario: Successful withdrawal from an account in credit
    Given my account has been credited with $100
    When I withdraw $20 new
    Then $20 should be dispensed
    And the balance of my account should be $80
#when you have a tag @tag_name you can "cucumber --tags @tag_name"
