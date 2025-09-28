Language: Brazilian Portuguese
*** Settings ***
Resource    ../resources/base.robot

Suite Setup       Abrir Navegador
Suite Teardown    Close Browser


*** Test Cases ***
Reordenar Lista Sortable Em Ordem Decrescente
    Dado Acesso Página Sortable
    Então Reordeno Lista Na Ordem Decrescente