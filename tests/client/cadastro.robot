*** Settings ***
Resource          ../../resources/client.resource
Test Setup        Abrir o navegador
Test Teardown     Fechar o navegador

*** Test Cases ***
Cenário de Teste
    Passo 1 - Acessar o site
    Passo 2 - Fazer login
    Passo 3 - Digitar senha
    Passo 4 - Clicar no botão de login
    Passo 5 - Verificar se o login foi bem-sucedido e clicar em cadastros
    Passo 6 - Clicar em Cliente 
    Passo 7 - Click em Novo Cadastro
    Passo 8 - Preencher Dados
    Passo 9 - Clicar no botão salvar

    
    



 