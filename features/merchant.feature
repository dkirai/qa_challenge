Feature: Create new merchant
  As an Agency user
  I want to Create a valid merchant
  So that I can target offers to the merchants business

  Scenario: create a valid marchant
    Given am on Verve Offers Manager login page
    And I enter a valid email and password
    Then should be logged in verve offer manager
    And I select the marchants tab
    And I click on new marchants button
    Then I should be on new marcharnt page
    And I fill in the new marchart form
    And I click on create merchant button
    Then I should see merchant successfully created message

