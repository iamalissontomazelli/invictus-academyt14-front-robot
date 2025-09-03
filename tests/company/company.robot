*** Settings ***
Resource      ../../resources/main.resource
Resource        ../../resources/company.resource
Test Setup      Abrir o navegador
Test Teardown   Fechar o navegador



*** Test Cases ***
Cadastro de empresa com sucesso
    Passo 0 - Acessar o site
    Passo 2 - Logar
    Passo 3 - Clicar em Empresa
    Passo 4 - Clicar em Novo Cadastro
    Passo 5 - Preencher dados da Empresa
    Passo 6 - Clicar no botão SALVAR

Editar Cadastro com Sucesso 
    Passo 0 - Acessar o site
    Passo 2 - Logar
    Passo 3 - Clicar em Empresa
    #Testes para editar cliente
    Clicar em editar empresa 
    Editar empresa
    Passo 6 - Clicar no botão SALVAR
