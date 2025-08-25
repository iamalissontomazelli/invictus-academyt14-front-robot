*** Settings ***

Resource    ../variables/boardVariables.resource
Library    SeleniumLibrary



*** Keywords ***
Configurar navegador
    Set Selenium Timeout    10s
    Set Selenium Speed    3s

Abrir o navegador
    Open Browser    ${urlBase}    ${browser}
    Maximize Browser Window

Fechar o navegador
    Close Browser

Passo 1 - Acessar o site
    Go To    ${urlBase}

Passo 2 - Fazer login
    Wait Until Element Is Visible       locator=${emailPosition}
    Input Text                          locator=${emailPosition}    text=${username}
    
Passo 3 - Digitar senha
    Wait Until Element Is Visible     locator=${passwordPosition}     
    Input Text                        locator=${passwordPosition}    text=${password}

Passo 4 - Clicar no botão de login
    Wait Until Element Is Visible    locator=${loginButtonPosition}     
    Click button                     locator=${loginButtonPosition}
           
Passo 5 - Verificar se o login foi bem-sucedido e clicar em cadastros
    Wait Until Element Is Visible    locator=${cadastrosPosition}     
    Click Element                    locator=${cadastrosPosition}  
    Sleep    5  
   

Passo 6 - Clicar em Diretoria  
    Wait Until Element Is Visible    locator=${DiretoriaPosition}     
    Click Element                    locator=${DiretoriaPosition}  
    Sleep    5   


Passo 7 - Clicar em Novo Cadastro 
    Wait Until Element Is Visible    locator=${NovoCadastroDiretoriaPosition}     
    Click Element                    locator=${NovoCadastroDiretoriaPosition}   
    Sleep    5

Passo 8 - Preencher Dados Cadastro Diretoria
    Wait Until Element Is Visible            locator=${NomeDiretoriaPosition}   
    Input Text                               locator=${NomeDiretoriaPosition}     text=${nomeDiretoriaX} 
    Sleep    5   

Passo 9 - Click em Salvar Novo Cadastro
    Wait Until Element Is Visible    locator=${SalvarNovoCadastroPosition}   
    Click Element                    locator=${SalvarNovoCadastroPosition} 
    Sleep    5
  