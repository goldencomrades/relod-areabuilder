Feature: Login into the application

  As a guest user
  I want to be able to log in into the application
  So that I can use the private section

  Scenario: Guest user executes login successfully
    Given I am a "guest" user
    And I am on the login page
    And I fill in "email" with "test@test.com"
    And I fill in "password" with "pass1234"
    When I click "Login" button
    Then I should be on "/home" page
    And I should see "Welcome"

  Scenario: Guest user executes login with correct username and wrong password
    Given I am a "guest" user
    And I am on the login page
    And I fill in "email" with "test@test.com"
    And I fill in "password" with "wrongPass"
    When I click "Login" button
    Then I should see "Error"
    And I should see "Wrong username or password"

  Scenario: Guest user executes login with wrong username and correct password
    Given I am a "guest" user
    And I am on the login page
    And I fill in "email" with "wrongUsername"
    And I fill in "password" with "pass1234"
    When I click "Login" button
    Then I should see "Error"
    And I should see "Wrong username or password"

  Scenario: Guest user executes login with wrong username and wrong password
    Given I am a "guest" user
    And I am on the login page
    And I fill in "email" with "wrongUsername"
    And I fill in "password" with "wrongPass"
    When I click "Login" button
    Then I should see "Error"
    And I should see "Wrong username or password"
