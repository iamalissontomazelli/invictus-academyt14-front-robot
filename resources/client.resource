*** Settings ***
Library    SeleniumLibrary



# Comands to be executed in the test case
# robot --output tests/logs/output.xml --log tests/logs/log.html --report tests/logs/report.html tests/cadastro.robot


*** Variables ***
#Base URL and Browser Configuration
${urlBase}    https://invictus.qacoders.dev.br/login
${browser}    Chrome
${username}    alissontomazelli@invictus.com.br
${password}    1234@Test

#Dados para o cadastro
${nome}    James Tomazelli Jr.
${email}    alissontomazelli20043@invictus.com
${cpf}    12343578909
${accessLevel}    ADMIN
${userPassword}    Kmzwa8awaa@
${confirmPassword}    Kmzwa8awaa@

#Element Locators user credentials
${fullNamePosition}    id=fullName
${mailPosition}    id=mail
${accessLevelPosition}    id=accessProfile
${cpfPosition}    id=cpf
${passwordPosition}    id=password
${confirmPasswordPosition}    id=confirmPassword

#Diretoria Elements Locators 
${diretoria}    class= css-ew2jk
${NovoDiretoria}    id=Novo Cadastro

#Element Locators with Texts
${emailPosition}    id=email
${passwordPosition}    id=password


#Buttons
${loginButtonPosition}    id=login
${cadastrosPosition}      class=css-11z55jn
${usuariosPosition}       id=Usuários
${novoCadastroPosition}    class=css-fvzsut
${buttonSalvarUser}    id=save
${editarCadastroPosition}    id=edit


#Clientes 
${clientePosition}    class=css-w0pj6f










*** Keywords ***

Configurar navegador
    Set Selenium Timeout    10s
    Set Selenium Speed    3s

Abrir o navegador
    Open Browser    ${urlBase}    ${browser}
    Maximize Browser Window

Fechar o navegador
    Close Browser

Abrir o navegador e logar
    Abrir o navegador
    Passo 1 - Acessar o site
    Passo 2 - Fazer login
    Passo 3 - Digitar senha
    Passo 4 - Clicar no botão de login

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
    Sleep    5s        
Passo 5 - Verificar se o login foi bem-sucedido e clicar em cadastros
    Wait Until Element Is Visible    locator=${cadastrosPosition}     timeout=10s
    Click Element                    locator=${cadastrosPosition}

Passo 6 - Clicar em Cadastro    
    Wait Until Element Is Visible    locator=${cadastrosPosition}    timeout=10s
        Click Element                locator=${cadastrosPosition}
     Sleep    5s   
     
Passo 7 - Clicar em Cliente
    Wait Until Element Is Visible    locator=${clientePosition}    timeout=10s
        Click Element                locator=${clientePosition}

