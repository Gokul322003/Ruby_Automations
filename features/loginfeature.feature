Feature: Registration

  Scenario: Fill out the registration form
    Given I am on the registration page
    When I fill the registration form
    Then the registration should be successful
