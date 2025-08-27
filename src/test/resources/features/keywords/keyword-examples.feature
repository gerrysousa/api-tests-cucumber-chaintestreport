@examples
Feature: Example of the use of keywords
  As a tester
  I want to test the functionality of a fake API
  So that I can ensure it behaves as expected

  Scenario: Example create a new activity with valid data [COMPACT BETTER]
    Given I set the headers
      | content-type | application/json |
    When I send a "POST" request to "fakeapi.url" endpoint "/v1/Activities" with JSON payload "activity_20.json"
    Then the response status code should be "200"
    And the response body should contain "Sample Activity"

  Scenario: Example create a new activity with valid data [AVOID USE MANY KEYWORDS]
    Given I set the headers
      | content-type | application/json |
    And I set the base URL to "fakeapi.url"
    And I set the request body with JSON file "activity_20.json"
    When I send a "POST" request to endpoint "/v1/Activities"
    Then the response status code should be "200"
    And the response body should contain "Sample Activity"
