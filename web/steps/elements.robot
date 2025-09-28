*** Settings ***
Resource    ../resources/base.robot

*** Keywords ***

Acesso Seção Web Tables
    clicar no elemento       ${ELEMENTS_BTN_ELEMENTS}
    clicar no elemento       ${ELEMENTS_BTN_WEB_TABLES} 

Crio Novo Registro
    [Arguments]    ${primeiro_nome}    ${segundo_nome}    ${email}    ${idade}    ${salario}    ${departamento}
    Execute JavaScript    document.getElementById('fixedban').style.display='none';
    clicar no elemento    ${ELEMENTS_BTN_ADD}
    Input Text       ${ELEMENTS_INPUT_PRIMEIRO_NOME}       ${primeiro_nome}
    Input Text       ${ELEMENTS_INPUT_SEGUNDO_NOME}       ${segundo_nome}
    Input Text       ${ELEMENTS_INPUT_EMAIL}      ${email}
    Input Text       ${ELEMENTS_INPUT_IDADE}            ${idade}
    Input Text       ${ELEMENTS_INPUT_SALARIO}         ${salario}
    Input Text       ${ELEMENTS_INPUT_DEPARTAMENTO}     ${departamento}
    Click Button     ${ELEMENTS_BTN_SUBMIT}

Edito Registro
    [Arguments]    ${email_to_edit}    @{changes}
    ${row_xpath}=    Set Variable    //div[@class='rt-tbody']//div[text()='${email_to_edit}']/ancestor::div[contains(@class,'rt-tr-group')]
    clicar no elemento        ${row_xpath}//span[@title='Edit']
    FOR    ${change}    IN    @{changes}
        ${pair}=         Split String    ${change}    =
        ${field}=        Set Variable     ${pair}[0]
        ${value}=        Set Variable     ${pair}[1]
        ${field_lower}=  Convert To Lowercase    ${field[0]}
        ${field_rest}=   Evaluate    "${field}"[1:]
        ${input_id}=     Set Variable    id=${field_lower}${field_rest}
        Input Text       ${input_id}     ${value}
    END
    Click Button    id=submit

Deleto Registro
    [Arguments]    ${email_to_delete}
    ${row_xpath}=    Set Variable    //div[@class='rt-tbody']//div[text()='${email_to_delete}']/ancestor::div[contains(@class,'rt-tr-group')]
    clicar no elemento        ${row_xpath}${ELEMENTS_BTN_DELETE} 

Fechar Navegador
    Close Browser
