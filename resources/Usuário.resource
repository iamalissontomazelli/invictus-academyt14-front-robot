*** Settings ***
Resource    variables/UsuárioVariables.resource
Resource    main.resource
Library    SeleniumLibrary


*** Keywords ***
Clicar em Usuário
    Wait Until Element Is Visible    locator=${usuárioPosition}    timeout=10s
    Click Element                    locator=${usuárioPosition}
    
Clicar em Novo Cadastro
    Wait Until Element Is Visible    locator=${newUserPosition}    timeout=10s
    Click Element    locator=${newUserPosition}


Preencher Dados
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
     
Clicar no botão salvar
    Wait Until Element Is Visible    locator=${cpfPosition}    timeout=5s
    Click Button    locator=${buttonSalvarUser}
      

Clicar em editar
    Wait Until Element Is Visible    locator=${editPosition}    timeout=5s
    Click Button    locator=${editPosition}
    Sleep    3s


Editar cadastro de usuário
    Wait Until Element Is Visible    locator=${fullNamePosition}    timeout=10s
    Wait Until Element Is Enabled    locator=${fullNamePosition}    timeout=10s
    Scroll Element Into View         locator=${fullNamePosition}
    Click Element                    locator=${fullNamePosition}    
    Input Text                       ${EditfullNamePosition}     ${novoNome}    
    Click Button                     ${buttonSalvarUser}    
    Sleep    3s

