*** Settings ***
Library  Browser

Documentation    A resource file for demo Gantt using playwight library for robot framework, login page.

*** Variables ***
${PAGE}    https://gantt-qa.bubo.io/#/login  

*** Keywords ***
Gantt Login Page is open
    [Documentation]    Open the Gantt login page
    New Page   ${PAGE}
    Set Viewport Size    1280    800
    Get Text    span    contains    Bubo Gantt Access

Click Corporate login
    Click    //button[@type='button']
    Wait For Elements State    (//input[@value='ICS-Corporate-Login'])[2]    enabled    10
    Click    (//input[@value='ICS-Corporate-Login'])[2]

Input login credentials

    Fill Text    //input[@type='email']    %{GANTT_USERNAME}
    Take Screenshot
    Click        //input[@type='submit']
    Fill Text    //input[@name='passwd']    %{GANTT_PASSWORD}
    Take Screenshot
    Click            //input[@type='submit']
    Log To Console    "Waiting for page to render... (20s)"
    Sleep    20s
    Take Screenshot