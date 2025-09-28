*** Settings ***
Resource    ../resources/base.robot

*** Variables ***
${DRAG_DROP_BTN_INTERACTIONS}                 xpath=//h5[text()='Interactions']
${DRAG_DROP_BTN_SORTABLE}                     xpath=//span[text()='Sortable']
${DRAG_DROP_LISTA_1}                          xpath=//*[@id="demo-tabpane-list"]/div/div[1]
${DRAG_DROP_LISTA_2}                          xpath=//*[@id="demo-tabpane-list"]/div/div[2]
${DRAG_DROP_LISTA_3}                          xpath=//*[@id="demo-tabpane-list"]/div/div[3]
${DRAG_DROP_LISTA_4}                          xpath=//*[@id="demo-tabpane-list"]/div/div[4]
${DRAG_DROP_LISTA_5}                          xpath=//*[@id="demo-tabpane-list"]/div/div[5]
${DRAG_DROP_LISTA_6}                          xpath=//*[@id="demo-tabpane-list"]/div/div[6]
${DRAG_DROP_ORDEM_1}                          xpath=//div[@class='vertical-list-container mt-4']//div[@class='list-group-item list-group-item-action' and text()='One']
${DRAG_DROP_ORDEM_2}                          xpath=//div[@class='vertical-list-container mt-4']//div[@class='list-group-item list-group-item-action' and text()='Two']
${DRAG_DROP_ORDEM_3}                          xpath=//div[@class='vertical-list-container mt-4']//div[@class='list-group-item list-group-item-action' and text()='Three']
${DRAG_DROP_ORDEM_4}                          xpath=//div[@class='vertical-list-container mt-4']//div[@class='list-group-item list-group-item-action' and text()='Four']
${DRAG_DROP_ORDEM_5}                          xpath=//div[@class='vertical-list-container mt-4']//div[@class='list-group-item list-group-item-action' and text()='Five']
${DRAG_DROP_ORDEM_6}                          xpath=//div[@class='vertical-list-container mt-4']//div[@class='list-group-item list-group-item-action' and text()='Six']