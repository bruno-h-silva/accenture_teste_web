*** Settings ***
Resource    ../resources/base.robot

*** Keywords ***

Fechar Navegador
    Close Browser

Acesso Página Progress Bar
    Execute JavaScript    document.getElementById('fixedban').style.display='none';
    clicar no elemento                ${WIDGETS_BTN_WIDGETS}
    clicar no elemento                ${WIDGETS_TXT_PROGRESS_BAR}
    Wait Until Element Is Visible     ${WIDGETS_BTN_START_STOP}

Clico no Botão Start
    clicar no elemento    ${WIDGETS_BTN_START_STOP}

Paro Quando Atingir Limite
    [Arguments]    ${limite_percentage}
    FOR    ${i}    IN RANGE    1    300
        Wait Until Element Is Visible    ${WIDGETS_TXT_PORCENTAGEM}
        ${text}=    Get Text    ${WIDGETS_TXT_PORCENTAGEM}
        ${num}=    Evaluate    int("${text}".replace('%',''))
        IF    ${num} == ${limite_percentage}    
            clicar no elemento    ${WIDGETS_BTN_START_STOP}
            Exit For Loop
        ELSE IF    ${num} >= ${limite_percentage}
            Exit For Loop
        END
    END

Valido Barra Menor Ou Igual
    [Arguments]    ${limiar_percentage}
    ${text}=    Get Text    ${WIDGETS_TXT_PORCENTAGEM}
    ${num}=     Evaluate    int("${text}".replace('%',''))
    Should Be True    ${num} <= ${limiar_percentage}

clico em Recomeçar
    Click Button    ${WIDGETS_BTN_START_STOP}

Espero Completar
    Wait Until Keyword Succeeds    20x    0.9s    Barra Deve Estar Em 100 Porcento

Reseto
    Click Button    id=resetButton

Verificar Zero
    Sleep    0.5s
    ${text}=    Get Text    ${WIDGETS_TXT_PORCENTAGEM}
    Should Be Equal As Strings    ${text}    0%

Barra Deve Estar Em 100 Porcento
    ${text}=    Get Text    ${WIDGETS_TXT_PORCENTAGEM}
    ${num}=     Evaluate    int("${text}".replace('%',''))
    Should Be Equal As Integers    ${num}    100

