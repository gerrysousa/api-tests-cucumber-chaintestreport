@library
Feature: Testing PUT with Fake API
  As a tester
  I want to test the functionality of a fake API
  So that I can ensure it behaves as expected

  Scenario: Update an existing activity
    Given I set the headers
      | content-type | application/json |
    And I send a "POST" request to "fakeapi.url" endpoint "/v1/Activities" with JSON payload "activity_20.json"
    When I send a "PUT" request to "fakeapi.url" endpoint "/v1/Activities/18" with JSON payload "activity_20_update.json"
    Then the response status code should be "200"
    And the response body should contain "Sample Activity Updated"