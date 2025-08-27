*** Settings ***
Resource        ../../resources/company.resource
Test Setup      Abrir navegador
Test Teardown   Fechar navegador

*** Test Cases ***
Cadastro de empresa com sucesso
    Passo 1 - Acessar o site
    Passo 2 - Fazer login
    Passo 3 - Clicar em Empresa
    Passo 4 - Clicar em Novo Cadastro
    Passo 5 - Preencher dados da Empresa
    Passo 6 - Clicar no botão SALVAR
