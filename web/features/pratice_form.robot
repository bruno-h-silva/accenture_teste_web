Language: Brazilian Portuguese
*** Settings ***
Resource    ../resources/base.robot

Suite Setup      abrir navegador
Suite Teardown    Close Browser


*** Test Cases ***
Preencher e Submeter o Formulário do DemoQA
    Dado Acesso Seção Practice Form
    Quando Preencho Formulário Com Dados Aleatórios
    E Faço Upload Do Arquivo    ${FILE_PATH}
    E Submeto Formulário
    E Verifico Popup De Confirmação
    Então Fecho Popup
