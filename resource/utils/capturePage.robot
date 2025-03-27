*** Settings ***
Library  AppiumLibrary

*** Variables ***
${SCREENSHOT_INDEX}    1

*** Keywords ***
Capture Screenshot
    ${FILENAME}=    Set Variable    screenshot_${SCREENSHOT_INDEX}.png
    Capture Page Screenshot    ${OUTPUT DIR}/${FILENAME}
    ${SCREENSHOT_INDEX}=    Evaluate    ${SCREENSHOT_INDEX} + 1