*** Settings ***
Resource          ../../resources/Usuário.resource
Test Setup        Abrir o navegador
Test Teardown     Fechar o navegador

*** Test Cases ***
Cadastro de Usuário
    Passo 0 - Acessar o site
    Passo 1 - Fazer login com sysadmin
    Passo 2 - Verificar se o login foi bem-sucedido e clicar em cadastros
    Passo 4 - Clicar em Usuário 
    Passo 5 - Click em Novo Cadastro
    Criar dados do usuário
    Passo 6 - Preencher Dados
    Passo 7 - Clicar no botão salvar

 
    
