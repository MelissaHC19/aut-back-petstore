Feature: Loguear usuario en el sistema

  Background:
    * url baseUrl
    * header Accept = 'application/json'
    * header Content-Type = 'application/json'

  Scenario: Loguear usuario en el sistema con datos válidos
    * def credentials = read('classpath:data/auth_credentials.json')
    Given path '/user/login'
    And request credentials
    When method GET
    Then status 200
    And match response.message contains 'logged in user session'
    * print '>>> ' + response.message
    * def username = credentials.username
    * karate.set('username', username)