*** Variables *** 
#Base URL and Browser Configuration
${urlBase}     https://invictus.qacoders.dev.br/login
${browser}     Chrome
${username}    sysadmin@qacoders.com
${password}    1234@Test


#Diretoria Elements Locators 
${DiretoriaPosition}                     id=Diretorias
${NovoCadastroDiretoriaPosition}         id=Novo Cadastro
${NomeDiretoriaPosition}                 id=boardName
${PreencherDadosDiretoriaPosition}       text=Dados da Diretoria
${SalvarNovoCadastroPosition}            id=save


#Dados para o cadastro
${nomeDiretoriaX}      TesteDoisdiretoria FrontEnd


#Element Locators with Texts
${emailPosition}       id=email
${passwordPosition}    id=password

#Buttons
${loginButtonPosition}      id=login
${cadastrosPosition}        id=Cadastros
${usuariosPosition}         id=Usuários
${novoCadastroPosition}     class=css-fvzsut
${buttonSalvarUser}         id=save
${editarCadastroPosition}   id=edit



#Clientes 
${clientePosition}      id=Cliente
${newClientPosition}    id=Novo Cadastro
