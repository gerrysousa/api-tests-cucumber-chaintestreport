@library
Feature: Testing POST with Fake API
  As a tester
  I want to test the functionality of a fake API
  So that I can ensure it behaves as expected

  Scenario: Create a new activity with valid data
    Given I set the headers
      | content-type | application/json |
    When I send a "POST" request to "fakeapi.url" endpoint "/v1/Activities" with JSON payload "activity_20.json"
    Then the response status code should be "200"
    And the response body should contain "Sample Activity"
