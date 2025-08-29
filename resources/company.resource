*** Settings ***
Resource    variables/companyVariables.resource
Library     SeleniumLibrary

*** Keywords ***
Configurar navegador
    Set Selenium Timeout    10s
    Set Selenium Speed      0.5s

Abrir navegador
    Open Browser    ${urlBase}    ${browser}
    Maximize Browser Window

Fechar navegador
    Close Browser

Passo 1 - Acessar o site
    Go To    ${urlBase}

Passo 2 - Logar
    Wait Until Element Is Visible    ${loginEmailField}    timeout=10s
    Input Text    ${loginEmailField}    ${username}

    Wait Until Element Is Visible    ${loginPasswordField}    timeout=10s
    Input Text    ${loginPasswordField}    ${password}

    Wait Until Element Is Visible    ${loginButton}    timeout=10s
    Click Button    ${loginButton}

    Wait Until Element Is Visible    ${cadastrosMenu}    timeout=10s
    Click Element    ${cadastrosMenu}

Passo 3 - Clicar em Empresa
    Wait Until Element Is Visible    ${companyMenu}    timeout=10s
    Click Element    ${companyMenu}

Passo 4 - Clicar em Novo Cadastro
    Wait Until Element Is Visible    ${newCompanyButton}    timeout=10s
    Click Element    ${newCompanyButton}

Passo 5 - Preencher dados da Empresa
    Wait Until Element Is Visible    ${razaoSocialField}    timeout=10s
    Click Element    ${razaoSocialField}
    Input Text    ${razaoSocialField}    ${corporateName}

    Input Text    ${nomeFantasiaField}   ${fantasyName}
    Input Text    ${emailCompanyField}   ${companyEmail}
    Input Text    ${cnpjField}           ${registerNumber}
    Input Text    ${telefoneField}       ${telephone}
    Input Text    ${responsavelField}    ${responsibleContact}
    Input Text    ${serviceDescField}    ${serviceDescription}
    Input Text    ${cepField}            ${cep}
    Input Text    ${paisField}           ${pais}
    Input Text    ${cidadeField}         ${cidade}
    Input Text    ${estadoField}         ${estado}
    Input Text    ${bairroField}         ${bairro}
    Input Text    ${ruaField}            ${rua}
    Input Text    ${numeroField}         ${numero}
    Input Text    ${complementoField}    ${complemento}

Passo 6 - Clicar no botão SALVAR
    Wait Until Element Is Visible    ${saveButton}    timeout=10s
    Click Button    ${saveButton}
    Wait Until Element Is Visible    ${successMessage}    timeout=15s


# Sessão Editar



Clicar em editar empresa
    Wait Until Element Is Visible    locator=${editPosition}    timeout=5s
    Click Button    locator=${editPosition}
    Sleep    5s

Editar empresa
            
    # Editar campo de texto 
    Wait Until Element Is Visible    locator=${razaoSocialField}     timeout=10s
    Wait Until Element Is Enabled    locator=${razaoSocialField}     timeout=10s
    Scroll Element Into View         locator=${razaoSocialField} 
    Click Element                    locator=${razaoSocialField}     
    Press Keys                       ${razaoSocialField}     COMMAND+A    timeout=15s
    Press Keys                       ${razaoSocialField}     BACKSPACE    timeout=15s
    Input Text                       ${razaoSocialField}     Nova Empresaa 
   
    Input Text    ${nomeFantasiaField}   ${fantasyName}
    Input Text    ${emailCompanyField}   ${companyEmail}
    Input Text    ${cnpjField}           ${registerNumber}
    Input Text    ${telefoneField}       ${telephone}
    Input Text    ${responsavelField}    ${responsibleContact}
    Input Text    ${serviceDescField}    ${serviceDescription}
    Input Text    ${cepField}            ${cep}
    Input Text    ${paisField}           ${pais}
    Input Text    ${cidadeField}         ${cidade}
    Input Text    ${estadoField}         ${estado}
    Input Text    ${bairroField}         ${bairro}
    Input Text    ${ruaField}            ${rua}
    Input Text    ${numeroField}         ${numero}
    Input Text    ${complementoField}    ${complemento}
   
    Click Button                     ${saveButton} 