*** Settings ***
Library    SeleniumLibrary



# Comands to be executed in the test case
# robot --output tests/logs/output.xml --log tests/logs/log.html --report tests/logs/report.html tests/cadastro.robot


*** Variables ***
#Base URL and Browser Configuration
${urlBase}    https://invictus.qacoders.dev.br/login
${browser}    Chrome
${username}    sysadmin@qacoders.com
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
    Input Text                       locator=${emailPosition}    text=${username}

Passo 3 - Digitar senha
    Wait Until Element Is Visible    locator=${passwordPosition}     timeout=10s
    Input Text                        locator=${passwordPosition}    text=${password}

Passo 4 - Clicar no botão de login
    Wait Until Element Is Visible    locator=${loginButtonPosition}   timeout=10s    
    Click button                     locator=${loginButtonPosition}

Passo 5 - Verificar se o login foi bem-sucedido e clicar em cadastros
    Wait Until Element Is Visible    locator=${cadastrosPosition}     timeout=10s
    Click Element                    locator=${cadastrosPosition}
    


Passo 6 - Clicar no menu users
    Wait Until Element Is Visible    locator=${usuariosPosition}     timeout=10s
    Click Element                    locator=${usuariosPosition}

Passo 6.1 - Clicar no menu diretoria
    Wait Until Element Is Visible    locator=${diretoria}     timeout=10s
    Click Element                    locator=${NovoDiretoria}
    Sleep    5s
    

Passo 7 - Clicar em Novo Cadastro
    Wait Until Element Is Visible    locator=${novoCadastroPosition}     timeout=10s
    Click Element                    locator=${novoCadastroPosition}
    

Passo 8 - Preencher os campos obrigatórios
    Wait Until Element Is Visible    locator=${fullNamePosition}    timeout=10s
    Input Text                       locator=${fullNamePosition}    text=${nome}
    Input Text                       locator=${mailPosition}        text=${email}
    Input Text                       locator=${accessLevelPosition}  text=${accessLevel}
    Input Text                       locator=${cpfPosition}         text=${cpf}
    Input Text                       locator=${passwordPosition}    text=${userPassword}
    Input Text                       locator=${confirmPasswordPosition}    text=${confirmPassword}
   

Passo 9 - Clicar no botão Salvar
    Wait Until Element Is Visible    locator=${buttonSalvarUser}     timeout=10s
    Click Button                    locator=${buttonSalvarUser}
    

Passo 10 - Clicar em Editar Cadastro
    Wait Until Element Is Visible    locator=${editarCadastroPosition}     timeout=10s
    Click Element                    locator=${editarCadastroPosition}
    

Passo 11 - Editar nome
    Wait Until Element Is Visible    locator=${fullNamePosition}    timeout=10s
    Click Element                    locator=${fullNamePosition}
    Press Keys                       ${fullNamePosition}    COMMAND+A
    Press Keys                       ${fullNamePosition}    BACKSPACE
    Input Text                       ${fullNamePosition}    ${nome}
    

Passo 12 - Editar email
    Wait Until Element Is Visible    locator=${mailPosition}    timeout=10s
    Click Element                    locator=${mailPosition}
    Press Keys                       ${mailPosition}    COMMAND+A
    Press Keys                       ${mailPosition}    BACKSPACE
    Input Text                       ${mailPosition}    ${email}
    


Passo 13 - Clicar no botao Salvar Alteracao
     Wait Until Element Is Visible    locator=${buttonSalvarUser}     timeout=10s
     Click Element                    locator=${buttonSalvarUser}
     
