Language: Brazilian Portuguese

*** Settings ***

####Library
Library           SeleniumLibrary
Library           Collections
Library           FakerLibrary
Library           String
Library           OperatingSystem

####Resource steps
Resource    ../steps/pratice_form.robot
Resource    ../steps/new_window.robot
Resource    ../steps/elements.robot
Resource    ../steps/widgets.robot
Resource    ../steps/drag_drop.robot

####Resource pages
Resource    ../pages/pratice_form.robot
Resource    ../pages/new_window.robot
Resource    ../pages/drag_drop.robot
Resource    ../pages/elements.robot
Resource    ../pages/widgets.robot

####Resource 
Resource    variables.robot

*** Keywords ***

clicar no elemento
    [Arguments]    ${elemento}
    Wait Until Element Is Visible    ${elemento}    timeout=10
    Click Element    ${elemento}
    
