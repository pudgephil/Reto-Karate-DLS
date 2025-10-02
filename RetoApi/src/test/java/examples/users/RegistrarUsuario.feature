Feature: Registrar usuarios

  Background:
    * def responseBody = read ('classpath:req/req_RegistrarUsuario.json')

  Scenario Outline: Registrar usuario
    Given url 'https://serverest.dev/usuarios'
  * def body = read('classpath:req/req_RegistrarUsuario.json')
    * set body.email = '<email>'
    And request body
    When method post
    Then status 201

    Examples:
      |email|
      |pepw@qa.com.br|