@library
Feature: Testing DELETE with Fake API
  As a tester
  I want to test the functionality of a fake API
  So that I can ensure it behaves as expected

  Scenario: Delete an existing activity
    Given I set the headers
      | content-type | application/json |
    And I send a "POST" request to "fakeapi.url" endpoint "/v1/Activities" with JSON payload "activity_20.json"
    When I send a "DELETE" request to "fakeapi.url" endpoint "/v1/Activities/19"
    Then the response status code should be "200"
