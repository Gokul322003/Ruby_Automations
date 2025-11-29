Feature: Registration

#  User register himself in the application

  Scenario: Fill out the registration form
    Given I am on the registration page
    Then I fill the registration form
    Then Click the Registration Button
#    And the registration should be successful


#User Login With his credentials
    Scenario: Login with the user
      Given I login with userid "johndoe" and password "password"
      Then Verify the Login is successful with "Welcome John Doe"

#Open New Account
      Scenario: Open New Account
        Given I login with userid "johndoe" and password "password"
        Given Users Click on Open New Account
        Then User Selecting "CHECKING" type of account
        And the registration should be successful







