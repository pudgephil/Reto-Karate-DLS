Feature: Buscar Usuario por ID

  Background:
    * def responseBody = read ('classpath:req/responseConsultaUsuarios.json')

    Scenario Outline: Buscar Usuario
      Given url 'https://serverest.dev/usuarios'
    * def queryParams = { _id:<id>}
      And params queryParams
      When method get
      Then status 200
      And match response.usuarios.[0]._id == '<id>'
      And match response.usuarios[0].email contains '@'

      Examples:
        |id|
        |0uxuPY0cbmQhpEz1|