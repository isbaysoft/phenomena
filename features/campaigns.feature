Feature: Manage Articles
  In order to make a blog
  As an author
  I want to create and manage articles
  
  @javascript
  Scenario: Articles List
    Given I have campaigns titled Metro, Rabbit
    When I go to the list of campaigns
    Then I see table of campaigns within 2 rows
    And I should see "Metro"
    And I should see "Rabbit"

  @javascript
  Scenario: Create a Campaign
    Given I have no Campaigns
    And I am on the list of Campaigns
    When I follow "New Campaign"
    And I fill in "Name" with "Superman"
    And I fill in "date_start" with "02-25-2013"
    And I fill in "date_end" with "03-25-2013"
    And I press "Save changes"
    Then I see table of campaigns within 1 rows
    And I should see "Superman"

