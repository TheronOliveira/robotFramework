*** Settings ***

Library  SeleniumLibrary
Resource  ${EXECDIR}/pages/trabalheConosco.robot 
Suite Setup  Open Browser  about:blank  chrome  
Suite Teardown  Close Browser

*** Variables ***
${url} =  https://www.primecontrol.com.br/trabalhe-conosco/

*** Test Cases ***
Test
    
    Maximize Browser Window 
    Go To   ${url}
    Click Element  ${trabalheConosco.btnAccept}
    Click Element  ${trabalheConosco.btnCadastrarCurriculo}
    Switch Window  New
    Input Text  ${trabalheConosco.nome}  ${preencherFormulario.nome}
    Input Text  ${trabalheConosco.cargo}  ${preencherFormulario.cargo}
    Input Text  ${trabalheConosco.email}  ${preencherFormulario.email}
    Input Text  ${trabalheConosco.telefone1}  ${preencherFormulario.telefone1}
    Select From List By Value  ${trabalheConosco.pais}  ${preencherFormulario.pais}
    Input Text  ${trabalheConosco.estado}  ${preencherFormulario.estado}
    Input Text  ${trabalheConosco.cidade}  ${preencherFormulario.cidade}
    Input Text  ${trabalheConosco.bairro}  ${preencherFormulario.bairro}
    Input Text  ${trabalheConosco.endereco}  ${preencherFormulario.endereco}
    Input Text  ${trabalheConosco.cep}  ${preencherFormulario.cep}
    Choose File  ${trabalheConosco.curriculo}  ${EXECDIR}/robotFramework.txt
    Wait Until Page Contains  robotFramework.txt  30
    Scroll Element Into View  ${trabalheConosco.btnFinalizar}
