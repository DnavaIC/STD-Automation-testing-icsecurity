*** Settings ***
Library  Browser

Documentation    A resource file for demo Gantt using playwight library for robot framework, login page.

*** Variables ***
${PAGE}    https://gantt-qa.bubo.io/#/login
${LOGIN_BTN}    //button[@type='button']
${ICS_CORPORATE_BTN}   (//input[@value='ICS-Corporate-Login'])[2]
${EMAIL_INPUT}    //input[@type='email']
${SUBMIT_BTN}    //input[@type='submit']
${PASSWORD_INPUT}    //input[@name='passwd']
${GANTT_BTN}    //img[@src='/gantt.svg']

*** Keywords ***
Gantt Login Page is open
    [Documentation]    Open the Gantt login page
    New Page   ${PAGE}
    Set Viewport Size    1280    800
    Get Text    span    contains    Bubo Gantt Access

Click Corporate login
    Click    ${LOGIN_BTN}
    Wait For Elements State    ${ICS_CORPORATE_BTN}    enabled    10
    Click    ${ICS_CORPORATE_BTN}

Input login credentials

    Fill Text    ${EMAIL_INPUT}    %{GANTT_USERNAME}
    Take Screenshot
    Click    ${SUBMIT_BTN}
    Fill Text    ${PASSWORD_INPUT}    %{GANTT_PASSWORD}
    Take Screenshot
    Click            ${SUBMIT_BTN}
    Log To Console    "\nWaiting for page to render... "
    Wait For Elements State    ${GANTT_BTN}    enabled    40s
    # Sleep    20s
    Take Screenshot

Login into Gantt Web
    [Documentation]    Perform login into Gantt web
    Gantt Login Page is open
    Click Corporate login
    Input login credentials
    