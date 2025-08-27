Feature: Crear múltiples usuarios con datos Data-Driven (JSON)

  Background:
    * url baseUrl
    * header Accept = 'application/json'
    * header Content-Type = 'application/json'

  Scenario Outline: Crear un usuario exitosamente usando datos externos
    Given path '/user/createUsersWithListInput'
    And request { "username": "<username>", "firstName": "<firstName>", "lastName": "<lastName>", "email": "<email>",  }
    When method POST
    Then status 201
    * print '>>> User created: ' + response.title + ' (ID: ' + response.id + ')'

    Examples:
    | read('classpath:data/users.json' |