Feature: Registration

#  User register himself in the application

  Scenario: Fill out the registration form
    Given I am on the registration page
    Then I fill the registration form
    Then Click the Registration Button
    Then Take Screenshot of scenario "Login_Page" and the file name is "Register_Success"
#    And the registration should be successful


#User Login With his credentials
    Scenario: Login with the user
      Given I login as "user1"
      Then Verify the Login is successful with "Welcome John Snow"
      Then Take Screenshot of scenario "Login_Page" and the file name is "Login_Success"

#Open New Account
      Scenario: Open New Account
        Given I login as "user1"
        Given Users Click on Open New Account
        Then User Selecting "CHECKING" type of account
        Then Take Screenshot of scenario "Landing_Page" and the file name is "Open_account"
#        And the registration should be successful







