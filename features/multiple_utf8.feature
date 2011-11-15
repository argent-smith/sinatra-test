Feature: UTF-8 in multiple places
  As a web developer
  In order to freely operate UTF-8 strings in my project
  I want to use them in differents places of an app stack

  Scenario: No UTF strings
    Given I go to the homepage
    Then I should see "No strange signs at all"

  Scenario: UTF in Ruby code
    Given I go to the page with UTF in Ruby
    Then I should see "Русская строка в Ruby"

  Scenario: UTF in HAML
    Given I go to the page with UTF in HAML
    Then I should see "Русская строка в HAML"

  Scenario: UTF in both Ruby and HAML
    Given I go to the page with UTF in both Ruby code and Haml template
    Then I should see "Русская строка в Ruby"
    And I should see "Русская строка в HAML"
