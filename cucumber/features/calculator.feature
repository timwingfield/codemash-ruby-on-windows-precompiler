Feature: using a calculator

  Background:
    Given the calculator is open

  Scenario: adding two numbers
    Given I want to add two numbers
    When I perform the calculation
    Then I should see my two numbers added