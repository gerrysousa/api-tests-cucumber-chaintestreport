@envfile
Feature: Testing by environment file
  As a tester
  I want to test the functionality of a fake API
  So that I can ensure it behaves as expected

  Scenario: Create a new activity with valid data
    Given I set the headers
      | content-type | application/json |
    When I send a "POST" request to "fakeapi.url" endpoint "/v1/Activities" with JSON payload "activity_20.json"
    Then the response status code should be "200"
    And the response body should contain "Sample Activity gen:test.id"

  Scenario: Retrieve an activity by ID
    Given I set the headers
      | content-type | application/json |
    And I reset the count of wiremock requests
    And I send a "POST" request to "fakeapi.url" endpoint "/v1/Activities" with JSON payload "activity_20.json"
    When I send a "GET" request to "fakeapi.url" endpoint "/v1/Activities/20"
    Then the response status code should be "200"
    And the response body should contain "Activity 20"
    And the API mocks were called
      | get-activities-by-id-001 |
      | post-activities-001      |