Feature: Actualizar usuario

  Background:
    * url baseUrl
    * header Accept = 'application/json'
    * header Content-Type = 'application/json'

    # Obtener username de usuario logueado
    * def login = call read('user-login.feature')
    * def username = login.username

    # Leer datos nuevos del usuario
    * def new_user_info = read('classpath:data/user_update_info.json')
    * def new_username = new_user_info.username
    * karate.set('new_username', new_username)

  Scenario: Actualizar info de usuario existente
    Given path '/user/', username
    And request new_user_info
    When method PUT
    Then status 200