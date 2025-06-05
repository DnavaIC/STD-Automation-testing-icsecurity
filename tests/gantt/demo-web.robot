*** Settings ***
Library    Browser
Suite Setup  New Browser   browser=${BROWSER}  headless=${HEADLESS}
Test Setup  New Context  viewport={"width": 1920, "height": 1080}
Test Teardown  Close Context
Suite Teardown  Close Browser
Resource    ../../resource/Gantt-pages/login-gantt.robot


*** Variables ***
${BROWSER}    chromium
${HEADLESS}   False

*** Test Cases ***
Check if bubo is opening
    [Documentation]    A test case to check if bubo is opening
    [Tags]    demo
    Given Gantt Login Page is open
    When Click Corporate login
    And Input login credentials