Language: Brazilian Portuguese

*** Settings ***
Resource    ../resources/base.robot

Suite Setup       Abrir Navegador
Suite Teardown    Close Browser

*** Test Cases ***
Gerenciar Registros na Web Table
    Dado Acesso Seção Web Tables
    Quando Crio Novo Registro    joao    silva    joao.silva@example.com    30    5000    Analista de Qualidade
    E Edito Registro        joao.silva@example.com    FirstName=maria    LastName=joaquina    UserEmail=maria.joaquina@example.com
    Então Deleto Registro       maria.joaquina@example.com
