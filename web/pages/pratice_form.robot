*** Settings ***
Resource    ../resources/base.robot

*** Variables ***
${HOME_BTN_FORMS}                    xpath=//h5[text()='Forms']/ancestor::div[@class='card mt-4 top-card']
${FORMS_BTN_PRATICE_FORM}            xpath=//span[text()='Practice Form']
${FORMS_BTN_GENERO_MASC}             xpath=//label[@for='gender-radio-1'] 
${FORMS_INPUT_TELEFONE}              id=userNumber
${FORMS_BTN_ANIVERSARIO}             xpath=//*[@id='dateOfBirthInput']
${FORMS_INPUT_MES_ANIVERSARIO}       class=react-datepicker__month-select
${FORMS_INPUT_ANO_ANIVERSARIO}       class=react-datepicker__year-select
${FORMS_BTN_FECHAR_DATA}             xpath=//div[contains(@class,'react-datepicker__day--015') and not(contains(@class,'outside-month'))]
${FORMS_INPUT_SUBJECTS}              id=subjectsInput
${FORMS_SELECT_READING}              xpath=//label[text()='Reading']
${FORMS_INPUT_ENDERECO}              id=currentAddress
${FORMS_SELECT_STATE}                xpath=//*[@id='state']
${FORMS_STATE_NCR}                   xpath=//div[text()='NCR']
${FORMS_BTN_CITY}                    id=city 
${FORMS_SELECT_CITY_DELHI}           xpath=//div[text()='Delhi']
${FOMRS_BTN_UPLOAD}                  id=uploadPicture
${FORMS_BTN_SUBMIT}                  id=submit
${FORMS_TITLE_MODAL}                 id=example-modal-sizes-title-lg
${FORMS_BTN_FECHAR_MODAL}            id=closeLargeModal
${FORMS_INPUT_FIRST_NAME}            id=firstName    
${FORMS_INPUT_LAST_NAME}             id=lastName     
${FORMS_INPUT_EMAIL}                 id=userEmail   