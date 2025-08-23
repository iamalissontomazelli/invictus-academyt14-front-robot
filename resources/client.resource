*** Settings ***

Resource    ../variables/clientVariables.resource
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

Passo 6 - Clicar em Cliente
    Wait Until Element Is Visible    locator=${clientePosition}    timeout=10s
    Click Element                    locator=${clientePosition}
    
Passo 7 - Click em Novo Cadastro
    Wait Until Element Is Visible    locator=${newClientPosition}    timeout=10s
    Click Element    locator=${newClientPosition}
    Sleep    3s

Passo 8 - Preencher Dados
    Wait Until Element Is Visible    locator=${fullNamePosition}    timeout=5s
    Input Text    locator=${fullNamePosition}    text=${nome}    

    Wait Until Element Is Visible    locator=${dataNascimentoPosition}    timeout=5s
    Input Text    locator=${dataNascimentoPosition}    text=${data}   

    Wait Until Element Is Visible    locator=${clientEmailPosition}    timeout=15s
    Input Text    locator=${clientEmailPosition}    text=${clientEmail}    

    Wait Until Element Is Visible    locator=${telefonePosition}    timeout=5s
    Input Text    locator=${telefonePosition}    text=${telefone}    
    
    Wait Until Element Is Visible    locator=${cargoPosition}    timeout=5s
    Input Text    locator=${cargoPosition}    text=${cargo}    
    
    Wait Until Element Is Visible    locator=${rgPosition}    timeout=5s
    Input Text    locator=${rgPosition}    text=${rg}

    Wait Until Element Is Visible    locator=${cpfPosition}    timeout=5s
    Input Text    locator=${cpfPosition}    text=${cpf}    

    Wait Until Element Is Visible    locator=${cepPosition}    timeout=5s
    Input Text    locator=${cepPosition}    text=${cep}

    Wait Until Element Is Visible    locator=${paisPosition}    timeout=5s
    Input Text    locator=${paisPosition}    text=${pais}    

    Wait Until Element Is Visible    locator=${cidadePosition}    timeout=5s
    Input Text    locator=${cidadePosition}    text=${cidade}    

    Wait Until Element Is Visible    locator=${estadoPosition}    timeout=5s
    Input Text    locator=${estadoPosition}    text=${estado}    

    Wait Until Element Is Visible    locator=${bairroPosition}    timeout=5s
    Input Text    locator=${bairroPosition}    text=${bairro}    

    Wait Until Element Is Visible    locator=${ruaPosition}    timeout=5s
    Input Text    locator=${ruaPosition}    text=${rua}    

    Wait Until Element Is Visible    locator=${numeroCasaPosition}    timeout=5s
    Input Text    locator=${numeroCasaPosition}    text=${numero}    

    Wait Until Element Is Visible    locator=${complementoPosition}    timeout=5s
    Input Text    locator=${complementoPosition}    text=${complemento}    
Passo 9 - Clicar no botão salvar
    Wait Until Element Is Visible    locator=${cpfPosition}    timeout=5s
    Click Button    locator=${buttonSalvarUser}
    Sleep    15s   




# Sessão Editar



Clicar em editar
    Wait Until Element Is Visible    locator=${editPosition}    timeout=5s
    Click Button    locator=${editPosition}
    Sleep    5s

Editar cadastro de cliente
            
    # Editar campo de texto (macOS)
    Wait Until Element Is Visible    locator=${fullNamePosition}    timeout=10s
    Wait Until Element Is Enabled    locator=${fullNamePosition}    timeout=10s
    Scroll Element Into View         locator=${fullNamePosition}
    Click Element                    locator=${fullNamePosition}
    Sleep    2s
    Press Keys                       ${fullNamePosition}    COMMAND+A    
    Sleep    1s
    Press Keys                       ${fullNamePosition}    BACKSPACE    
    Sleep    1s
    Input Text                       ${fullNamePosition}    ${novoNome}   
    Sleep    2s 
    Click Button                     ${buttonSalvarUser}    