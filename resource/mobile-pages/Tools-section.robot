*** Settings ***
Documentation  Steps for Tools section Page
Library    AppiumLibrary

*** Variables ***
${SHIFT_BTN}              //*[@content-desc="Shift"]
${VEHICLE_INVENTORY}      //*[contains(@content-desc, 'Weapons Inventory')]
${SERIAL_NUMBER_INPUT}    //android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.widget.EditText[1]
${DESCRIPTION_INPUT}      //android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.widget.EditText[2]
${SUBMIT_BTN}             accessibility_id=SUBMIT
${NO_PICTURE_ERROR}       //*[contains(@content-desc, 'Please upload a picture')]
*** Keywords ***

# SHIFT TOOLS SECTION
Navigate to Shift tools section
    Wait Until Element Is Visible    ${SHIFT_BTN}    timeout=20s
    Click Element    ${SHIFT_BTN}
Click Vehicle Inventory
    Wait Until Element Is Visible    ${VEHICLE_INVENTORY}    timeout=10s
    Click Element    ${VEHICLE_INVENTORY}

Fill all Vehicle inputs
    Input Text    ${SERIAL_NUMBER_INPUT}    QA Automated test
    Input Text    ${DESCRIPTION_INPUT}    Lorem ipsum dolor sit amet consectetur adipiscing elit.

Validate error message when subitting without picture
    Wait Until Element Is Visible    ${NO_PICTURE_ERROR}    timeout=5s
