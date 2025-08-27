*** Settings ***

Resource    ../resources/variables/clientVariables.resource
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
