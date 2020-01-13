Feature: Test /election endpoint
  Scenario: Sending GET request to /election endpoint using https protocol
    When I send https GET request to /elections
    Then I should get 200 response code
    And the response payload fits the required JSON schema

  Scenario: Sending GET request to /elections endpoint using http protocol
    When I send http GET request to /elections
    Then I should get 403 response code

  Scenario: Sending GET request to /election endpoint using https protocol
    When I send https GET request to /elections with invalid key
    Then I should get 400 response code

  Scenario: Sending GET request to /elections endpoint using https protocol
    When I send https GET request to /elections without valid key
    Then I should get 403 response code