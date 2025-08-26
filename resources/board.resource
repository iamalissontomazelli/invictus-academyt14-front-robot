*** Settings ***

Resource    ../resources/variables/boardVariables.resource
Resource    ../resources/main.resource
Library    SeleniumLibrary



*** Keywords ***

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
    Input Text                               locator=${NomeDiretoriaPosition}     text=${NOME_RAMDOM}
    Sleep    5   

Passo 9 - Click em Salvar Novo Cadastro
    Wait Until Element Is Visible    locator=${SalvarNovoCadastroPosition}   
    Click Element                    locator=${SalvarNovoCadastroPosition} 
    Sleep    5
  