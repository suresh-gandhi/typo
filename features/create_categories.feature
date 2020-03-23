Feature: Create categories
  As an blog administrator
  In order to share my thoughts to the world
  I want to be able to add categories to my blog

  Background:
    Given the blog is set up
    And I am logged into the admin panel
   Scenario: Successfully Create categories
    Given I am on the new categories page
    When I fill in "category_name" with "books"
    And I fill in "category_keywords" with "romantic"
    And I fill in "category_permalink" with "yes"
    And I fill in "category_description" with "desc"
    And I press "Save"
    Then I should see "books"
    Then I should see "romantic"
    Then I should see "yes"
    Then I should see "desc"
     Then I follow "books"
    When I fill in "category_name" with "books1"
    And I fill in "category_keywords" with "romantic1"
    And I fill in "category_permalink" with "yes1"
    And I fill in "category_description" with "desc1"
    And I press "Save"
    Then I should see "books1"
    Then I should see "romantic1"
    Then I should see "yes1"
    Then I should see "desc1" 