*** Settings ***
Resource       ../../resources/board.resource
Resource      ../../resources/main.resource

Test Setup       Abrir o navegador
Test Teardown    Fechar o navegador

*** Test Cases ***
TC01- Cadastrar diretoria com sucesso
    Criar dados do usuário
    Passo 0 - Acessar o site
    Passo 1 - Fazer login com sysadmin
    Passo 2 - Verificar se o login foi bem-sucedido e clicar em cadastros
    Passo 6 - Clicar em Diretoria
    Passo 7 - Clicar em Novo Cadastro
    Passo 8 - Preencher Dados Cadastro Diretoria
    Passo 9 - Click em Salvar Novo Cadastro
 