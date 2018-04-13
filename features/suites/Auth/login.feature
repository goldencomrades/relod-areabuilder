
  Feature: Authentication

    Scenario: As a not registered user
              I want success visualize the login page

       Given I am on homepage
         And I wait until the page loads
        Then I see the message "/"
        Then I follow "Login"
         And I wait until the page loads
        Then I see the message "/login"

