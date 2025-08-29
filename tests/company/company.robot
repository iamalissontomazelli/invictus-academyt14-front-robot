*** Settings ***
Resource        ../../resources/company.resource
Test Setup      Abrir navegador
Test Teardown   Fechar navegador

*** Variables ***
${chrome_options}=    Create Dictionary    args=--headless=new,--no-sandbox,--disable-dev-shm-usage

*** Test Cases ***
Cadastro de empresa com sucesso
    Passo 1 - Acessar o site
    Passo 2 - Logar
    Passo 3 - Clicar em Empresa
    Passo 4 - Clicar em Novo Cadastro
    Passo 5 - Preencher dados da Empresa
    Passo 6 - Clicar no botão SALVAR

Editar Cadastro com Sucesso 
    Passo 1 - Acessar o site
    Passo 2 - Logar
    Passo 3 - Clicar em Empresa
    #Testes para editar cliente
    Clicar em editar empresa 
    Editar empresa
    Passo 6 - Clicar no botão SALVAR
