
*** Variables ***
#Base URL and Browser Configuration
${urlBase}    https://invictus.qacoders.dev.br/login
${browser}    Chrome
${username}    alissontomazelli@invictus.com.br
${password}    1234@Test


#Dados para o cadastro
${nome}    James Tomazelli Jr
${data}    10/03/1992
${email}    alissontomazelli20043@invictus.com
${clientEmail}    suelythom157@invictus.com
${telefone}    68989938801
${cargo}    Vendedor
${rg}    253400065
${cpf}    12343578909
${accessLevel}    ADMIN
${userPassword}    Kmzwa8awaa@
${confirmPassword}    Kmzwa8awaa@

${cep}    69945970
${pais}    Brasil
${cidade}    Acrelândia
${estado}    AC
${bairro}    Centro
${rua}    Avenida Paraná    
${numero}    155
${complemento}    Casa

#Element Locators user credentials
${fullNamePosition}    id=fullName
${dataNascimentoPosition}    id=birthDate
${mailPosition}    id=mail
${telefonePosition}    id=phone
${cargoPosition}    id=currentRole
${rgPosition}    name=rg
${cpfPosition}    id=cpf
${cepPosition}    id=zipCode
${paisPosition}    id=country
${cidadePosition}    id=city
${estadoPosition}    id=state
${bairroPosition}    id=district
${ruaPosition}    id=street
${numeroCasaPosition}    id=number
${complementoPosition}    id=complement
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
${clientePosition}    id=Cliente
${newClientPosition}    id=Novo Cadastro
${clientEmailPosition}    id=mail



