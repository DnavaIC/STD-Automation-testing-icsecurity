*** Settings ***
Documentation  Steps for Tools section Page
Library    AppiumLibrary

*** Variables ***
${SHIFT_BTN}              //*[@content-desc="Shift"]
${VEHICLE_INVENTORY}      //*[contains(@content-desc, 'Weapons Inventory')]
${SERIAL_NUMBER_INPUT}    android=new UiSelector().className("android.widget.EditText").instance(0)
${DESCRIPTION_INPUT}      android=new UiSelector().className("android.widget.EditText").instance(1)
${SUBMIT_BTN}             accessibility_id=SUBMIT
${NO_PICTURE_ERROR}       //*[contains(@content-desc, 'Please upload a picture')]
*** Keywords ***

# SHIFT TOOLS SECTION
Navigate to Shift tools section
    Wait Until Element Is Visible    ${SHIFT_BTN}    timeout=20s
    Click Element    ${SHIFT_BTN}
    Capture Page Screenshot

Click Vehicle Inventory

    Wait Until Element Is Visible    ${VEHICLE_INVENTORY}    timeout=10s
    Click Element    ${VEHICLE_INVENTORY}
    Capture Page Screenshot

Fill all Vehicle inputs
    Click Element    ${SERIAL_NUMBER_INPUT}
    Input Text    ${SERIAL_NUMBER_INPUT}    QA Automated test
    Go Back
    Click Element    ${DESCRIPTION_INPUT}
    Input Text    ${DESCRIPTION_INPUT}    Lorem ipsum dolor sit amet consectetur adipiscing elit.
    Go Back
    Capture Page Screenshot

Tap Submit button
    Click Element    ${SUBMIT_BTN}
    Capture Page Screenshot

Validate error message when subitting without picture
    Wait Until Element Is Visible    ${NO_PICTURE_ERROR}    timeout=5s
    Capture Page Screenshot
