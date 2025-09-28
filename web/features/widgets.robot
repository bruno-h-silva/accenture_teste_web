Language: Brazilian Portuguese
*** Settings ***
Resource    ../resources/base.robot

Suite Setup       Abrir Navegador
Suite Teardown    Close Browser

*** Test Cases ***
Validar Progress Bar Controlado
    Dado Acesso Página Progress Bar
    Quando Clico no Botão Start
    E Paro Quando Atingir Limite    20
    E Valido Barra Menor Ou Igual    25
    E clico em Recomeçar 
    E Espero Completar
    Então Reseto  
    E Verificar Zero
