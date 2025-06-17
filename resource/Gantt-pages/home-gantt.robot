*** Settings ***
Library    Browser

*** Variables ***
${GANTT_BTN}    //img[@src='/gantt.svg']
${CASE_CREATOR_BTN}    //span[normalize-space()='Create Case']
${CHANGE_ORDER_BTN}    //a[normalize-space()='Change Order']

*** Keywords ***

Home page is open
    [Documentation]    Wait for the Gantt home page to be visible
    Wait For Elements State    ${GANTT_BTN}    visible    10s    message=Gantt web is not open

Click GANTT button
    Highlight Elements    ${GANTT_BTN}
    Click    ${GANTT_BTN}

Hover mouse over CASE CREATOR button
    hover   ${CASE_CREATOR_BTN}

Navigate to change order
    Click    ${CHANGE_ORDER_BTN}
    Sleep    10s

