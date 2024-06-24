@regression @loginTest
Feature: Login succesfull
  # Scenario: Login Standard user and valid password
  #   Given I visit "https://www.saucedemo.com/"
  #   When I type standard_user on the Username credential input
  #   And I type secret_sauce on the password credential input
  #   Then I click on the login button

  Scenario: Login Standard user and valid password
    Given I visit "https://www.saucedemo.com/"
    And I check that the url value "inventory" is "not.contain"
    When I type standard_user on the Username credential input
    And I type secret_sauce on the password credential input
    Then I click on the login button
    And I check that the url value "inventory" is "contain"
    
  @smoke
  Scenario: Login Locked Out User and valid password
    Given I visit "https://www.saucedemo.com/"
    When I type Locked_Out_User on the Username credential input
    And I type secret_sauce on the password credential input
    Then I click on the login button
  Scenario: Login with parameterized User and valid password
    Given I visit "https://www.saucedemo.com/"
    When I type "standard_user" on the Username credential input
    And I type "secret_sauce" on the password credential input
    Then I click on the login button
  Scenario: Login with parameterized inputs and text values
    Given I visit "https://www.saucedemo.com/"
    When I type on the credential input "username" the text value "standard_user"
    When I type on the credential input "password" the text value "secret_sauce"
    Then I click on the login button
