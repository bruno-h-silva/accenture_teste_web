*** Settings ***
Resource    ../resources/base.robot

*** Variables ***
${ELEMENTS_BTN_ELEMENTS}                    xpath=//h5[text()='Elements']/ancestor::div[@class='card mt-4 top-card']
${ELEMENTS_BTN_WEB_TABLES}                  xpath=//span[text()='Web Tables']
${ELEMENTS_BTN_ADD}                         id=addNewRecordButton
${ELEMENTS_INPUT_PRIMEIRO_NOME}             id=firstName
${ELEMENTS_INPUT_SEGUNDO_NOME}              id=lastName
${ELEMENTS_INPUT_EMAIL}                     id=userEmail
${ELEMENTS_INPUT_IDADE}                     id=age
${ELEMENTS_INPUT_SALARIO}                   id=salary
${ELEMENTS_INPUT_DEPARTAMENTO}              id=department
${ELEMENTS_BTN_SUBMIT}                      id=submit
${ELEMENTS_BTN_DELETE}                      //span[@title='Delete']
