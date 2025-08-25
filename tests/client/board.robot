*** Settings ***
Resource       ../../resources/board.resource
Test Setup       Abrir o navegador
Test Teardown    Fechar o navegador

*** Test Cases ***
Passo 1 - Acessar o site
    Passo 2 - Fazer login
    Passo 3 - Digitar senha
    Passo 4 - Clicar no botão de login
    Passo 5 - Verificar se o login foi bem-sucedido e clicar em cadastros
    Passo 6 - Clicar em Diretoria
    Passo 7 - Clicar em Novo Cadastro
    Passo 8 - Preencher Dados Cadastro Diretoria
    Passo 9 - Click em Salvar Novo Cadastro