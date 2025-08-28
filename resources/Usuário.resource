*** Settings ***
Resource    variables/UsuárioVariables.resource
Resource    main.resource
Library    SeleniumLibrary


*** Keywords ***
Passo 4 - Clicar em Usuário
    Wait Until Element Is Visible    locator=${usuárioPosition}    timeout=10s
    Click Element                    locator=${usuárioPosition}
    
Passo 5 - Click em Novo Cadastro
    Wait Until Element Is Visible    locator=${newUserPosition}    timeout=10s
    Click Element    locator=${newUserPosition}
    Sleep    3s

Passo 6 - Preencher Dados
    Wait Until Element Is Visible    locator=${fullNamePosition}    timeout=5s
    Input Text    locator=${fullNamePosition}    text=${NOME_RAMDOM}    

    Wait Until Element Is Visible    locator=${userEmailPosition}    timeout=5s
    Input Text    locator=${userEmailPosition}   text=${EMAIL_RAMDOM}  

    Wait Until Element Is Visible    locator=${accessLevelPosition}    timeout=5s
    Input Text    locator=${accessLevelPosition}    text=${accessLevel}  

    Wait Until Element Is Visible    locator=${cpfPosition}    timeout=5s
    Input Text    locator=${cpfPosition}    text=${CPF_RAMDOM}  

    Wait Until Element Is Visible    locator=${passwordPosition}    timeout=5s
    Input Text    locator=${passwordPosition}    text=${userPassword}

    Wait Until Element Is Visible    locator=${confirmPasswordPosition}    timeout=5s
    Input Text    locator=${confirmPasswordPosition}    text=${confirmPassword}  
     
Passo 7 - Clicar no botão salvar
    Wait Until Element Is Visible    locator=${cpfPosition}    timeout=5s
    Click Button    locator=${buttonSalvarUser}
    Sleep    7s   

