*** Settings ***
Resource    ../resources/base.robot

*** Variables ***
${WIDGETS_BTN_WIDGETS}                  xpath=//h5[text()='Widgets']
${WIDGETS_TXT_PROGRESS_BAR}             xpath=//span[text()='Progress Bar']
${WIDGETS_BTN_START_STOP}               id=startStopButton
${WIDGETS_BTN_RESET}                    id=resetButton
${WIDGETS_TXT_PORCENTAGEM}              class=progress-bar