Language: Brazilian Portuguese
*** Settings ***
Resource    ../resources/base.robot

Suite Setup       Abrir Navegador
Suite Teardown    Close Browser


*** Test Cases ***
Validar Nova Janela No DemoQA
    Dado Acesso Seção Browser Windows
    Quando Clico No Botao New Window
    E Verifico Nova Janela Com Mensagem Esperada
    Então Fecho Nova Janela