*** Settings ***
Library    Browser
Suite Setup  New Browser   browser=${BROWSER}  headless=${HEADLESS}
Test Setup  New Context  viewport={"width": 1920, "height": 1080}
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
    Home page is open
    Click GANTT button
    Hover mouse over CASE CREATOR button
    Navigate to change order
    Change Order page is open
    Click Change Order Type
    Select admin type from dropdown


