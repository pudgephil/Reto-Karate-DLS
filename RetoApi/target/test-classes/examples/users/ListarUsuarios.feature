Feature: Listar usuarios

  Background:
    * def responseBody = read ('classpath:req/req_ListarUsuarios.json')

  Scenario Outline: Listar usuarios
    Given url 'https://serverest.dev/usuarios'
    * def queryParams = { administrador:<valor>}
    And params queryParams
    When method get
    Then status 200
    And match response.usuarios.[0].nome == '#notnull'
    And match response.usuarios.[0].email == '#notnull'
    And match response.usuarios.[0].password == '#notnull'
    And match response.usuarios.[0].administrador == '#notnull'
    And match response.usuarios.[0]._id == '#notnull'

    Examples:
      |valor|
      |true|