*** Settings ***
Resource    ../resources/base.robot

*** Keywords ***

Fechar Navegador
    Close Browser

Acesso Seção Browser Windows
    Scroll Element Into View    xpath=//h5[text()='Alerts, Frame & Windows']/ancestor::div[@class='card mt-4 top-card']
    Click Element Via JS        //h5[text()='Alerts, Frame & Windows']/ancestor::div[@class='card mt-4 top-card']
    clicar no elemento    ${NEW_WINDOWS_BTN_BROWSER}

Clico No Botao New Window
    clicar no elemento    ${NEW_WINDOWS_BTN_NEW_WINDOW}

Verifico Nova Janela Com Mensagem Esperada
    ${id_janela}=    Get Window Handles
    ${main}=    Get From List    ${id_janela}    0
    Set Suite Variable    ${main_window}    ${main}
    Wait Until Keyword Succeeds    5x    1s    Nova Janela Deve Ser Aberta
    ${nova_id_janela}=    Get Window Handles
    FOR    ${janela}    IN    @{nova_id_janela}
        Run Keyword If    '${janela}' != '${main_window}'    Switch Window    ${janela}
    END
    Wait Until Page Contains    This is a sample page
    Page Should Contain         This is a sample page

Fecho Nova Janela
    Close Window
    Switch Window    ${main_window}

Nova Janela Deve Ser Aberta
    ${id_janela}=    Get Window Handles
    Length Should Be    ${id_janela}    2

Click Element Via JS
    [Arguments]    ${locator}
    Execute Javascript    document.evaluate("${locator}", document, null, XPathResult.FIRST_ORDERED_NODE_TYPE, null).singleNodeValue.click()
