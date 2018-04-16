Feature: Register into the application

  As a guest user
  I want to be able to register in into the application
  So that I can login and access to the private section

  Scenario: Guest user executes register successfully
    Given I am a "guest" user
    And I am on the register page
    And I fill in "name" with "testName"
    And I fill in "surname" with "testSurname"
    And I fill in "email" with "goldencomrades@gmail.com"
    And I fill in "password" with "pass1234"
    And I fill in "passwordConfirm" with "pass1234"
    And I check the "tac" checkbox
    When I click "Register" button
    Then I should see "Registration Successfully"

  Scenario: Guest user try to register without inserting any data
    Given I am a "guest" user
    And I am on the register page
    When I click "Register" button
    Then I should see "Name field is mandatory"
    And I should see "Surname field is mandatory"
    And I should see "Email field is mandatory"
    And I should see "Password field is mandatory"
    And I should see "Password Confirmation field is mandatory"
    And I should see "Terms and Conditions checkbox is mandatory"

  Scenario: Guest user try to register with correct data but special characters in name and surname field
    Given I am a "guest" user
    And I am on the register page
    And I fill in "name" with "t€st!N@me"
    And I fill in "surname" with "t€st!Surn@me"
    And I fill in "email" with "goldencomrades@gmail.com"
    And I fill in "password" with "p@ss!234"
    And I fill in "passwordConfirm" with "p@ss!234"
    And I check the "tac" checkbox
    When I click "Register" button
    Then I should see "Only letters numbers and spaces are allowed in the Name field"
    And I should see "Only letters numbers and spaces are allowed in the Surname field"

  Scenario: Guest user try to register with correct data but incorrect email
    Given I am a "guest" user
    And I am on the register page
    And I fill in "name" with "testName"
    And I fill in "surname" with "testSurname"
    And I fill in "email" with "goldencomradesgmail.com"
    And I fill in "password" with "pass1234"
    And I fill in "passwordConfirm" with "pass1234"
    And I check the "tac" checkbox
    When I click "Register" button
    Then I should see "Incorrect Email"

  Scenario: Guest user try to register with correct data but incorrect email and password less than 6 character
    Given I am a "guest" user
    And I am on the register page
    And I fill in "name" with "testName"
    And I fill in "surname" with "testSurname"
    And I fill in "email" with "goldencomrades@gmailcom"
    And I fill in "password" with "p1234"
    And I fill in "passwordConfirm" with "p1234"
    And I check the "tac" checkbox
    When I click "Register" button
    Then I should see "Incorrect Email"
    And I should see "Password needs to be at least 6 characters long"

  Scenario: Guest user try to register with correct data but only numeric password
    Given I am a "guest" user
    And I am on the register page
    And I fill in "name" with "testName"
    And I fill in "surname" with "testSurname"
    And I fill in "email" with "goldencomrades@gmail.com"
    And I fill in "password" with "1234567890"
    And I fill in "passwordConfirm" with "1234567890"
    And I check the "tac" checkbox
    When I click "Register" button
    And I should see "Password needs to have letters and numbers"

  Scenario: Guest user try to register with correct data but only letters and less then 6 characters password
    Given I am a "guest" user
    And I am on the register page
    And I fill in "name" with "testName"
    And I fill in "surname" with "testSurname"
    And I fill in "email" with "goldencomrades@gmail.com"
    And I fill in "password" with "qwer"
    And I fill in "passwordConfirm" with "qwer"
    And I check the "tac" checkbox
    When I click "Register" button
    Then I should see "Password needs to have letters and numbers"
    And I should see "Password needs to be at least 6 characters long"

  Scenario: Guest user try to register with correct data but without checks the terms and conditions checkbox
    Given I am a "guest" user
    And I am on the register page
    And I fill in "name" with "testName"
    And I fill in "surname" with "testSurname"
    And I fill in "email" with "goldencomrades@gmail.com"
    And I fill in "password" with "pass1234"
    And I fill in "passwordConfirm" with "pass1234"
    When I click "Register" button
    Then I should see "Terms and Conditions checkbox is mandatory"

  Scenario: Guest user visualise terms and condition successfully
    Given I am a "guest" user
    And I am on the register page
    When I click "terms_and_conditions" anchor
    Then I should see "Terms and Conditions"