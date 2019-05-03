@auth
Feature: 
    As an API Client
    I want to present a Client Certificate with a HTTP Request
    So that I can access protected systems

    Scenario: I successfully got User Admin AccessToken
        Given I use the mock target
        Given I pipe contents of file ./test/features/fixtures/authenticateUserAdmin.json to body
        When I POST to /auth/authenticate 
        Then response code should be 200
        Then response body should contain AccessToken
        Then I store the value of body path "AccessToken" as "AccessToken" in global scope

    Scenario: As an Admin I successfully post the Registration
        Given I use the mock target
        Given I set Authorization header to AccessToken
        Given I pipe contents of file ./test/features/fixtures/postRegistration.json to body    
        When I POST to /registration
        Then response code should be 201
        Then I store the value of body path "registrationId" as "registrationId"
