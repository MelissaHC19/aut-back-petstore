Feature: Crear múltiples usuarios con datos Data-Driven (JSON)

  Background:
    * url baseUrl
    * header Accept = 'application/json'
    * header Content-Type = 'application/json'

  Scenario: Crear un usuario exitosamente usando datos externos
    Given path '/user/createWithList'
    And request read('classpath:data/users.json')
    When method POST
    Then status 200
    * print '>>> User created: ' + response.title + ' (ID: ' + response.id + ')'