#Author: drielypacolla.ext@tivit.com / emerson.esilva@tivit.com
@UploadTest
Feature: Upload de Imagens

  Scenario: Efetuar Upload de Imagens
    Given que o usuário acessou a tela preencher formulario
    When seleciona a opção de adicionar formulario
    And selecionar a opção de Upload de Imagens
    And selecionar uma imagem do formato PNG
    And selecionar uma imagem do formato JPEG
    And selecionar uma imagem do formato TIFF
    And selecionar a opção Enviar.
    Then verifica a mensagem de sucesso

  Scenario: Realizar uma Consulta de itens cadastrados
    Given que o usuário acessou a tela de consulta de processos
    When seleciona os filtros desejados
    And selecionar a opção consultar
    Then verifica o resultado da pesquisa

  Scenario: Fazer o Upload das Imagens e não Enviar
    Given que o usuário acessou a tela preencher formulario
    When seleciona a opção de adicionar formulario
    And selecionar a opção de Upload de Imagens
    And selecionar uma imagem do formato PNG
    And selecionar uma imagem do formato JPEG
    And selecionar uma imagem do formato TIFF
    And selecionar a opção Voltar.
    Then verifica que não existem imagens anexadas ao processo.

  Scenario: Efetuar Upload de Imagens com mais de um documento na imagem
    Given que o usuário acessou a tela preencher formulario
    When seleciona a opção de adicionar formulario
    And selecionar a opção de Upload de Imagens
    And selecionar uma imagem com mais de um documento na imagem
    And selecionar a opção Enviar.
    Then verifica a mensagem de sucesso

  Scenario: Efetuar Upload de Imagens com imagem ilegível
    Given que o usuário acessou a tela preencher formulario
    When seleciona a opção de adicionar formulario
    And selecionar a opção de Upload de Imagens
    And selecionar uma imagem ilegível
    And selecionar a opção Enviar.
    Then verifica a mensagem de erro

  Scenario: Conferir as imagens Anexadas ao Processo
    Given que o usuário acessou a tela adicionar formulario
    When adiciona formulario e faz upload de imagens
    And verifica as imagens anexadas ao processo
    Then verifica que as imagens estão anexadas e tipificadas
