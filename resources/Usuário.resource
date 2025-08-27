*** Settings ***

Resource    variables/UsuárioVariables.resource
Library    SeleniumLibrary


*** Keywords ***

Configurar navegador
    Set Selenium Timeout    10s
    Set Selenium Speed    3s

Abrir o navegador
    Open Browser    ${urlBase}   ${browser}
    Maximize Browser Window

Fechar o navegador
    Close Browser


Passo 1 - Acessar o site
    Go To    ${urlBase}

Passo 2 - Fazer login
    Wait Until Element Is Visible    locator=${emailPosition}
    Input Text                          locator=${emailPosition}    text=${username}
    
Passo 3 - Digitar senha
    Wait Until Element Is Visible    locator=${passwordPosition}     timeout=10s
    Input Text                        locator=${passwordPosition}    text=${password}

Passo 4 - Clicar no botão de login
    Wait Until Element Is Visible    locator=${loginButtonPosition}   timeout=10s    
    Click button                     locator=${loginButtonPosition}
           
Passo 5 - Verificar se o login foi bem-sucedido e clicar em cadastros
    Wait Until Element Is Visible    locator=${cadastrosPosition}     timeout=10s
    Click Element                    locator=${cadastrosPosition}

Passo 6 - Clicar em Usuário
    Wait Until Element Is Visible    locator=${usuárioPosition}    timeout=10s
    Click Element                    locator=${usuárioPosition}
    
Passo 7 - Click em Novo Cadastro
    Wait Until Element Is Visible    locator=${newUserPosition}    timeout=10s
    Click Element    locator=${newUserPosition}
    Sleep    3s

Passo 8 - Preencher Dados
    Wait Until Element Is Visible    locator=${fullNamePosition}    timeout=5s
    Input Text    locator=${fullNamePosition}    text=${nome}    

    Wait Until Element Is Visible    locator=${userEmailPosition}    timeout=5s
    Input Text    locator=${userEmailPosition}   text=${userEmail}  

    Wait Until Element Is Visible    locator=${accessLevelPosition}    timeout=5s
    Input Text    locator=${accessLevelPosition}    text=${accessLevel}  

    Wait Until Element Is Visible    locator=${cpfPosition}    timeout=5s
    Input Text    locator=${cpfPosition}    text=${cpf}  

    Wait Until Element Is Visible    locator=${passwordPosition}    timeout=5s
    Input Text    locator=${passwordPosition}    text=${userPassword}

    Wait Until Element Is Visible    locator=${confirmPasswordPosition}    timeout=5s
    Input Text    locator=${confirmPasswordPosition}    text=${confirmPassword}  
     
Passo 9 - Clicar no botão salvar
    Wait Until Element Is Visible    locator=${cpfPosition}    timeout=5s
    Click Button    locator=${buttonSalvarUser}
    Sleep    7s   

