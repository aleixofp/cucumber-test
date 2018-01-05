#Author: drielypacolla.ext@tivit.com / emerson.esilva@tivit.com
@PreencherFormularioTest
Feature: Criar um Formulario personalizado para preenchimento de informações

  Scenario Outline: Verificar o Layout da tela de Formulario
    Given que o usuário acessou a tela adicionar formulario
    When seleciona a opção de adicionar formulario
    And verifica a exibição do campo Nome do Formulario
    And verifica a exibição do campo Versao
    And verifica a exibição dos <componente>
    Then seleciona a opção de inclusão de formulario

    Examples:
      | componente  |
      | texto 			|
      | listbox 		|
      | checkbox 		|
      | grouped 		|
      | list text		|

  Scenario: Verificar o Layout do Tipo Texto
    Given que o usuário acessou a tela adicionar formulario
    When seleciona a opção de adicionar formulario
    And selecionar o componente Texto
    And verifica a exibição da opção Titulo
    And verifica a exibição da opção Mascara
    And verifica a exibição da opção Tipo
    And verifica a exibição da opção Campo Requerido
    Then seleciona a opção de voltar

  Scenario: Verificar o Layout do Tipo Checkbox
    Given que o usuário acessou a tela adicionar formulario
    When seleciona a opção de adicionar formulario
    And selecionar o componente Checkbox
    And verifica a exibição da opção Titulo
    And verifica a exibição da opção Campo Requerido
    Then seleciona a opção de voltar

  Scenario: Verificar o Layout do Tipo Listbox
    Given que o usuário acessou a tela adicionar formulario
    When seleciona a opção de adicionar formulario
    And selecionar o componente Listbox
    And verifica a exibição da opção Titulo
    And verifica a exibição da opção Campo Requerido
    Then seleciona a opção de voltar

  Scenario: Verificar o Layout do Tipo Grouped
    Given que o usuário acessou a tela adicionar formulario
    When seleciona a opção de adicionar formulario
    And selecionar o componente Grouped
    And verifica a exibição da opção Titulo
    And verifica a exibição da opção Campo Requerido
    Then seleciona a opção de voltar

  Scenario: Verificar o Layout do Tipo List Text
    Given que o usuário acessou a tela adicionar formulario
    When seleciona a opção de adicionar formulario
    And selecionar o componente List Text
    And verifica a exibição da opção Titulo
    And verifica a exibição da opção Campo Requerido
    Then seleciona a opção de voltar

  Scenario Outline: Adicionar Formulario
    Given que o usuário acessou a tela adicionar formulario
    When seleciona a opção de adicionar formulario
    And inserir o <componente>
    Then pressiona o botão Salvar

    Examples:
      | componente      | titulo 			 | Campo Requerido  |
      | Texto 			| Nome   			 | sim 							|
      | Checkbox 		| Pessoa 			 | sim    					|
      | Listbox 		| Tipo 			   | sim    					|
      | Grouped 		| Teste        | não    					|
      | List Text		| Documentos   | não    					|
