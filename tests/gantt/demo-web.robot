*** Settings ***
Library    Browser
Suite Setup  New Browser   browser=${BROWSER}  headless=${HEADLESS}
# Test Setup  New Context  viewport={"width": 1920, "height": 1080}
# Test Teardown  Close Context
# Suite Teardown  Close Browser
Resource    ../../resource/Gantt-pages/login-gantt.robot
Resource    ../../resource/Gantt-pages/home-gantt.robot
Resource    ../../resource/Gantt-pages/case-creator/change-order.robot

*** Variables ***
${BROWSER}    chromium
${HEADLESS}   False

*** Test Cases ***
Test test test test test
    [Documentation]    A test case to check if bubo is opening
    [Tags]    demo
    Login into Gantt Web
    Log To Console    Gantt Web is open
    Home page is open
    Log To Console    Home page is open
    Click GANTT button
    Log To Console    Click Gantt button
    Hover mouse over CASE CREATOR button
    Log To Console    Hover mouse over CASE CREATOR button
    Navigate to change order
    Log To Console    Navigate to change order
    Switch page to Change Order
    Log To Console    Switch page to Change Order
    Change Order page is open
    Log To Console    Change Order page is open
    Click Change Order Type
    Log To Console    Click Change Order Type
    Select admin type from dropdown


