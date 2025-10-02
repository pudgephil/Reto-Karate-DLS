Feature: Actualizar informacion de usuario existente


  Scenario Outline: Actualizar usuario existente
    Given url 'https://serverest.dev/usuarios'
    And path '<id>'
    * def body = read('classpath:req/req_ActualizarInformacionUsuario.json')
    * set body.email = '<email>'
    * request body
    When method put
    Then status 201
    And match response.message == 'Cadastro realizado com sucesso'

    Examples:
      | id               | email               |
      | 0uxuPY0cbmQhpEz1 | beltraraaaam@qa.com.br |


