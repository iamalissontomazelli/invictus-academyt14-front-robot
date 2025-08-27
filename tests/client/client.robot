*** Settings ***
Resource    ../../resources/client.resource
Library    SeleniumLibrary

*** Test Cases ***
TC01 - Cadastro de Cliente
    Passo 1 - Fazer login
    Passo 2 - Digitar senha
    Passo 3 - Clicar no botão de login
    Passo 4 - Verificar se o login foi bem-sucedido e clicar em cadastros
    Passo 5 - Clicar em Cliente 
    Passo 6 - Click em Novo Cadastro
    Passo 7 - Preencher Dados
    Passo 8 - Clicar no botão salvar

TC02 - Editar Cadastro 
    Passo 1 - Acessar o site
    Passo 2 - Fazer login
    Passo 3 - Digitar senha
    Passo 4 - Clicar no botão de login
    Passo 5 - Verificar se o login foi bem-sucedido e clicar em cadastros
    Passo 6 - Clicar em Cliente 
    #Testes para editar cliente
    Clicar em editar
    Editar cadastro de cliente

    



 