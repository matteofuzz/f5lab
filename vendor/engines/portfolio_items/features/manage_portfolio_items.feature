@portfolio_items
Feature: Portfolio Items
  In order to have portfolio_items on my website
  As an administrator
  I want to manage portfolio_items

  Background:
    Given I am a logged in refinery user
    And I have no portfolio_items

  @portfolio_items-list @list
  Scenario: Portfolio Items List
   Given I have portfolio_items titled UniqueTitleOne, UniqueTitleTwo
   When I go to the list of portfolio_items
   Then I should see "UniqueTitleOne"
   And I should see "UniqueTitleTwo"

  @portfolio_items-valid @valid
  Scenario: Create Valid Portfolio Item
    When I go to the list of portfolio_items
    And I follow "Add New Portfolio Item"
    And I fill in "Title" with "This is a test of the first string field"
    And I press "Save"
    Then I should see "'This is a test of the first string field' was successfully added."
    And I should have 1 portfolio_item

  @portfolio_items-invalid @invalid
  Scenario: Create Invalid Portfolio Item (without title)
    When I go to the list of portfolio_items
    And I follow "Add New Portfolio Item"
    And I press "Save"
    Then I should see "Title can't be blank"
    And I should have 0 portfolio_items

  @portfolio_items-edit @edit
  Scenario: Edit Existing Portfolio Item
    Given I have portfolio_items titled "A title"
    When I go to the list of portfolio_items
    And I follow "Edit this portfolio_item" within ".actions"
    Then I fill in "Title" with "A different title"
    And I press "Save"
    Then I should see "'A different title' was successfully updated."
    And I should be on the list of portfolio_items
    And I should not see "A title"

  @portfolio_items-duplicate @duplicate
  Scenario: Create Duplicate Portfolio Item
    Given I only have portfolio_items titled UniqueTitleOne, UniqueTitleTwo
    When I go to the list of portfolio_items
    And I follow "Add New Portfolio Item"
    And I fill in "Title" with "UniqueTitleTwo"
    And I press "Save"
    Then I should see "There were problems"
    And I should have 2 portfolio_items

  @portfolio_items-delete @delete
  Scenario: Delete Portfolio Item
    Given I only have portfolio_items titled UniqueTitleOne
    When I go to the list of portfolio_items
    And I follow "Remove this portfolio item forever"
    Then I should see "'UniqueTitleOne' was successfully removed."
    And I should have 0 portfolio_items
 