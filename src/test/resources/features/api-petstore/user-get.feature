Feature: Obtener usuario

  Background:
    * url baseUrl
    * header Accept = 'application/json'
    * header Content-Type = 'application/json'

  Scenario: Obtener información de un usuario por username
    Given path '/user/', username
    When method GET
    Then status 200
    * print '>>> ' response
    * def response = response
    * karate.set('response', user_info)