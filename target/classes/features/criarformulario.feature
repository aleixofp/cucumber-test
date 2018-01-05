#Author: drielypacolla.ext@tivit.com / emerson.esilva@tivit.com
@CriarFormularioTest
Feature: Verificar que os usuários do sistema conseguem criar um formulário personalizado para a gestão dos documentos

  Scenario Outline: Verificar o Layout da tela de Formulario
    Given que o usuário acessou a tela adicionar formulario
    When seleciona a opção de adicionar formulario
    And verifica a exibição do campo Nome do Formulario
    And verifica a exibição do campo Versao
    And verifica a exibição dos <componente>
    Then seleciona a opção de inclusão de formulario

    Examples:
      | componente     |
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

  Scenario: Adicionar Formulario
    Given que o usuário acessou a tela adicionar formulario
    When seleciona a opção de adicionar formulario
    And Preencher o campo Codigo de Usuario Area Comercial
    And verifica a exibição da opção Titulo
    And verifica a exibição da opção Campo Requerido
    Then seleciona a opção de voltar
