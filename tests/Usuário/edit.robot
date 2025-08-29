*** Settings ***
Resource          ../../resources/Usuário.resource
Test Setup        Abrir o navegador
Test Teardown     Fechar o navegador


*** Test Cases ***
Editar cadastro de usuário
    Passo 0 - Acessar o site
    Passo 1 - Fazer login com sysadmin
    Passo 2 - Verificar se o login foi bem-sucedido e clicar em cadastros
    Clicar em Usuário 
    
    Clicar em editar
    Editar cadastro de usuário
