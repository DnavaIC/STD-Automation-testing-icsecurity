*** Settings ***
Documentation  steps for login page
Library  AppiumLibrary  timeout=10
Resource    ../utils/appiumDriver.robot

*** Variables ***
${WHILE_USING_APP}       //*[contains(@resource-id, 'permission_allow_foreground_only_button')]
${ALLOW_ALERT}           //*[contains(@resource-id, 'permission_allow_button')]
${CONFIGURE_LOCATION}    //*[contains(@resource-id, 'btn_positive_action')]
${ALLOW_ALL_TIME}        //*[contains(@resource-id, 'allow_always_radio_button')]
${ANDROID_BACK}          //*[contains(@class, 'ImageButton')]
${PHONE_INPUT}           //*[contains(@class, 'EditText')]
${CONTINUE_LOGIN}        accessibility_id=CONTINUE
${LABEL_HOME}            accessibility_id=Home
${CLOSE_WINDOW}          //android.view.View[@content-desc="CONFIRM SHIFT"]/android.widget.Button
${INVALID_NUMBER}        //android.view.View[@content-desc="Invalid phone number"]

*** Keywords ***
Accept android location permission
  Wait Until Page Contains Element  ${WHILE_USING_APP} 
  Capture Page Screenshot
  Click Element  ${WHILE_USING_APP}

Accept android activity permission  
  Wait Until Page Contains Element    ${ALLOW_ALERT}
  Capture Page Screenshot
  Click Element  ${ALLOW_ALERT}

Configure all time location
  Wait Until Element Is Visible    ${CONFIGURE_LOCATION}
  Capture Page Screenshot
  Click Element  ${CONFIGURE_LOCATION}
  Wait Until Element Is Visible    ${ALLOW_ALL_TIME}    timeout=5s
  Click Element  ${ALLOW_ALL_TIME}
  Capture Page Screenshot
  Click Element  ${ANDROID_BACK} 
  Capture Page Screenshot

Input VALID phone number
  Wait Until Element Is Visible    ${PHONE_INPUT}
  Input Text    ${PHONE_INPUT}    %{PHONE_NUMBER}
  Capture Page Screenshot
  Click Element    ${CONTINUE_LOGIN}
  Wait Until Element Is Visible    ${ALLOW_ALERT}    timeout=30s
  Click Element    ${ALLOW_ALERT}

Input WRONG phone number
  [Documentation]    Input wrong phone number from envrionment variables
  Wait Until Element Is Visible    ${PHONE_INPUT}
  Input Text    ${PHONE_INPUT}    %{WRONG_PHONE_NUMBER}
  Capture Page Screenshot

Tap continue login button
  Wait Until Element Is Visible    ${CONTINUE_LOGIN}    timeout=30s
  Click Element    ${CONTINUE_LOGIN}

Allow calls alert
  Wait Until Element Is Visible    ${ALLOW_ALERT}    timeout=30s
  Click Element    ${ALLOW_ALERT}

Verify error message when wrong number is input
  [Documentation]    Verify error message when wrong phone number is input
  Wait Until Element Is Visible    ${INVALID_NUMBER}    timeout=30s
  Capture Page Screenshot
  Page Should Contain Text    Invalid phone number

Close confirm shift notification
  Sleep    5s
  Run Keyword And Ignore Error    Wait Until Element Is Visible    ${CLOSE_WINDOW}    timeout=5s
  Run Keyword And Ignore Error    Click Element    ${CLOSE_WINDOW}
  
Login to Inter-Con App
    Accept android location permission
    Accept android activity permission
    Configure all time location
    Input VALID phone number
    Tap continue login button
    Allow calls alert
    Close confirm shift notification