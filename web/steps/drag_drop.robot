*** Settings ***
Library    SeleniumLibrary
Library    XML
Resource   ../resources/base.robot

*** Variables ***
${BASE_URL}        https://demoqa.com
${SORTABLE_TAB}    xpath=//a[@id="demo-tab-list"]
${ITEMS}           xpath=//*[@id="demo-tabpane-list"]/div/div


*** Keywords ***
Acesso Página Sortable
    Go To    ${BASE_URL}
    Execute JavaScript    document.getElementById('fixedban').style.display='none';
    clicar no elemento                   ${DRAG_DROP_BTN_INTERACTIONS}
    Wait Until Element Is Visible        ${DRAG_DROP_BTN_SORTABLE}
    clicar no elemento                   ${DRAG_DROP_BTN_SORTABLE}
    Sleep    3
    Wait Until Element Is Visible        ${DRAG_DROP_LISTA_1}     timeout=15s

Reordeno Lista Na Ordem Decrescente
    [Documentation]    Reordena a lista Sortable na ordem decrescente
    Drag And Drop     ${DRAG_DROP_ORDEM_1}    ${DRAG_DROP_LISTA_6}
    Drag And Drop     ${DRAG_DROP_ORDEM_2}    ${DRAG_DROP_LISTA_5}
    Drag And Drop     ${DRAG_DROP_ORDEM_3}    ${DRAG_DROP_LISTA_4}
    Drag And Drop     ${DRAG_DROP_ORDEM_4}    ${DRAG_DROP_LISTA_3}
    Drag And Drop     ${DRAG_DROP_ORDEM_5}    ${DRAG_DROP_LISTA_2}
    Drag And Drop     ${DRAG_DROP_ORDEM_6}    ${DRAG_DROP_LISTA_1}
    Element Text Should Be    ${DRAG_DROP_LISTA_6}      One
    Element Text Should Be    ${DRAG_DROP_LISTA_5}      Two
    Element Text Should Be    ${DRAG_DROP_LISTA_4}      Three
    Element Text Should Be    ${DRAG_DROP_LISTA_3}      Four
    Element Text Should Be    ${DRAG_DROP_LISTA_2}      Five
    Element Text Should Be    ${DRAG_DROP_LISTA_1}      Six
