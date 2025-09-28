*** Settings ***
Resource    ../resources/base.robot

*** Keywords *** 
abrir navegador
    ${FILE_PATH}=    Normalize Path    ${CURDIR}/${RELATIVE_PATH}
    Set Suite Variable    ${FILE_PATH}
    Open Browser    ${URL}    chrome
    Maximize Browser Window

Acesso Seção Practice Form
    Execute JavaScript    document.getElementById('fixedban').style.display='none';
    Click Element Via JS                 //h5[text()='Forms']/ancestor::div[@class='card mt-4 top-card']
    Wait Until Element Is Visible        ${FORMS_BTN_PRATICE_FORM}
    clicar no elemento                        ${FORMS_BTN_PRATICE_FORM}

Preencho Formulário Com Dados Aleatórios
    Execute Javascript    document.documentElement.style.zoom='70%';
    ${first}=     First Name
    ${last}=      Last Name
    ${email}=     Email
    ${phone}=    Generate Random String    10    chars=0123456789
    ${address}=   Address
    Input Text            ${FORMS_INPUT_FIRST_NAME}      ${first}
    Input Text            ${FORMS_INPUT_LAST_NAME}       ${last}
    Input Text            ${FORMS_INPUT_EMAIL}           ${email}
    clicar no elemento    ${FORMS_BTN_GENERO_MASC}
    Input Text            ${FORMS_INPUT_TELEFONE}   ${phone}
    clicar no elemento    ${FORMS_BTN_ANIVERSARIO}
    Select From List By Index    ${FORMS_INPUT_MES_ANIVERSARIO}     5
    Select From List By Value    ${FORMS_INPUT_ANO_ANIVERSARIO}     1995
    clicar no elemento    ${FORMS_BTN_FECHAR_DATA}
    Input Text            ${FORMS_INPUT_SUBJECTS}    Maths
    Press Keys            ${FORMS_INPUT_SUBJECTS}    ENTER
    clicar no elemento    ${FORMS_SELECT_READING}
    Input Text            ${FORMS_INPUT_ENDERECO}     ${address}
    Set Focus To Element  ${FORMS_BTN_SUBMIT}
    clicar no elemento    ${FORMS_SELECT_STATE}
    clicar no elemento    ${FORMS_STATE_NCR}
    clicar no elemento    ${FORMS_BTN_CITY} 
    clicar no elemento    ${FORMS_SELECT_CITY_DELHI}

Faço Upload Do Arquivo
    [Arguments]    ${file_path}
    Choose File    ${FOMRS_BTN_UPLOAD}    ${file_path}

Submeto Formulário
    Set Focus To Element    ${FORMS_BTN_SUBMIT}
    clicar no elemento      ${FORMS_BTN_SUBMIT}

Verifico Popup De Confirmação
    Wait Until Page Contains Element    ${FORMS_TITLE_MODAL}   
    Element Should Be Visible           ${FORMS_TITLE_MODAL}   
    Log     Popup foi exibido com sucesso

Fecho Popup
    clicar no elemento    ${FORMS_BTN_FECHAR_MODAL}

Click Element Via JS
    [Arguments]    ${locator}
    Execute Javascript    document.evaluate("${locator}", document, null, XPathResult.FIRST_ORDERED_NODE_TYPE, null).singleNodeValue.click();
