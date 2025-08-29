*** Settings ***
Library     SeleniumLibrary

*** Variables ***
# Configuração
${urlBase}      https://invictus.qacoders.dev.br/login
${browser}      Chrome
${username}     alinetest@qacoders.com
${password}     1234@Test

# Dados da empresa
${corporateName}        Invictuss
${fantasyName}          Invictus Teste
${companyEmail}         tes@teste.com
${registerNumber}       12265678000195
${responsibleContact}   Maria Silva
${telephone}            +551991982985
${serviceDescription}   Serviços de QA

# Endereço
${cep}                 91945970
${pais}                Brasil
${cidade}              Porto Alegre
${estado}              RS
${bairro}              Centro
${rua}                 Rua Maua
${numero}              1000
${complemento}         Apto 101

# Locators - Login
${loginEmailField}      id=email
${loginPasswordField}   id=password
${loginButton}          id=login
${cadastrosMenu}        class=css-11z55jn
${companyMenu}          id=Empresa
${newCompanyButton}     id=Novo Cadastro

# Locators - Cadastro de Empresa
${razaoSocialField}     id=companyName
${nomeFantasiaField}    id=fantasyName
${emailCompanyField}    id=companyMail
${cnpjField}            id=matriz
${telefoneField}        id=telephone
${responsavelField}     id=fullName
${serviceDescField}     id=serviceDescription
${cepField}             id=zipCode
${paisField}            id=country
${cidadeField}          id=city
${estadoField}          id=state
${bairroField}          id=district
${ruaField}             id=street
${numeroField}          id=number
${complementoField}     id=complement
${saveButton}           id=save

#Editar 
${editPosition}     id=edit


# Mensagem de sucesso
${successMessage}       xpath=//div[contains(text(),"Cadastro realizado com sucesso")]