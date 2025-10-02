Feature: Eliminar usuario


  Scenario Outline: Eliminar usuario
    Given url 'https://serverest.dev/usuarios'
    And path '<id>'
    When method DELETE
    Then status 200
    And match response.message == 'Nenhum registro excluído'


    Examples:
      |id|
      |0uxuPY0cbmQhpEz1|