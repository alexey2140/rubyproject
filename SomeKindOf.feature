Feature: Search scenario

Scenario: Search for an adventure

Given I have entered "adventures" into the search field

When I click "search"

Then I should see message box