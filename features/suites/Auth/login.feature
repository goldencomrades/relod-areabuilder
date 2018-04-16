
Feature: Login allow a not authenticated user to visualise a part of the application related with his user type.

  Scenario: As not registered user I want to successfully login into the application
    Given I am a not registered user
    And I go to the homepage
    And I see the the login form
    And I insert a correct username
    And I insert a correct password
    When I click submit button
    Then I can see a welcome message

  Scenario: As a developer I wanna create a merge issue
  