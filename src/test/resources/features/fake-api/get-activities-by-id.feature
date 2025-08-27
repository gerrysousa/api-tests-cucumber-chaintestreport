@library
Feature: Testing GET BY ID with Fake API
  As a tester
  I want to test the functionality of a fake API
  So that I can ensure it behaves as expected

  Scenario: Retrieve an activity by ID
    Given I set the headers
      | content-type | application/json |
    And I send a "POST" request to "fakeapi.url" endpoint "/v1/Activities" with JSON payload "activity_20.json"
    When I send a "GET" request to "fakeapi.url" endpoint "/v1/Activities/20"
    Then the response status code should be "200"
    And the response body should contain "Activity 20"