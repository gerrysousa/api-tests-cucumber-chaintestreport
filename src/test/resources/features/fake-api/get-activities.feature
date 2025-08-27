@library
Feature: Testing GET with Fake API
  As a tester
  I want to test the functionality of a fake API
  So that I can ensure it behaves as expected

  Scenario: Retrieve all available activities
    Given I set the headers
      | content-type | application/json |
    When I send a "GET" request to "fakeapi.url" endpoint "/v1/Activities"
    Then the response status code should be "200"
    And the response body should contain "Activity 1"
