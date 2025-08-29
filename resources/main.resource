*** Settings ***

Resource     ../resources/variables/boardVariables.resource
Resource    ../resources/variables/clientVariables.resource
Library    SeleniumLibrary
Library   String

*** Keywords ***
  
Configurar navegador
    Set Selenium Timeout    10s
    Set Selenium Speed    3s

Abrir o navegador
    ${chrome_options}=    Create Dictionary    args=--headless=new,--no-sandbox,--disable-dev-shm-usage
    Open Browser    ${urlBase}    ${browser}   options=${BROWSER_OPTIONS}
    Maximize Browser Window

Fechar o navegador
    Close Browser

Passo 0 - Acessar o site
    Go To    ${urlBase}

Passo 1 - Fazer login com sysadmin
    Wait Until Element Is Visible       locator=${emailPosition}
    Input Text                          locator=${emailPosition}    text=${username}
    Wait Until Element Is Visible     locator=${passwordPosition}     
    Input Text                        locator=${passwordPosition}    text=${password}
    Wait Until Element Is Visible    locator=${loginButtonPosition}     
    Click button                     locator=${loginButtonPosition}

Passo 2 - Verificar se o login foi bem-sucedido e clicar em cadastros
    Wait Until Element Is Visible    locator=${cadastrosPosition}     
    Click Element                    locator=${cadastrosPosition}  
    Sleep    5  
   
Criar dados do usuário
  ${palavra_randomica}  Generate Random String  length=8  chars=[LETTERS]
  ${palavra_randomica}  Convert To Lower Case   ${palavra_randomica}
  ${cpf_randomico}  Generate Random String  length=11  chars=[NUMBERS]
  Set Test Variable     ${NOME_RAMDOM}           T${palavra_randomica} L${palavra_randomica}
  Set Test Variable    ${CPF_RAMDOM}         ${cpf_randomico}
  Set Test Variable     ${EMAIL_RAMDOM}           ${palavra_randomica}@qacoders.com.br
     
