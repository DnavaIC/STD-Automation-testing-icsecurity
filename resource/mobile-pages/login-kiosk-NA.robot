*** Settings ***
Documentation  steps for login page
Library  AppiumLibrary  timeout=10
Resource    ../utils/appiumDriver.robot

*** Variables ***
${WHILE_USING_APP}       //*[contains(@resource-id, 'permission_allow_foreground_only_button')]
${ALLOW_ALERT}        //*[contains(@resource-id, 'permission_allow_button')]
${CONFIGURE_LOCATION}    //*[contains(@resource-id, 'btn_positive_action')]
${ALLOW_ALL_TIME}        //*[contains(@resource-id, 'allow_always_radio_button')]
${ANDROID_BACK}          //*[contains(@class, 'ImageButton')]
${PHONE_INPUT}           //*[contains(@class, 'EditText')]
${CONTINUE_LOGIN}        accessibility_id=CONTINUE
${LABEL_HOME}            accessibility_id=Home


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
  Click Element  ${ALLOW_ALL_TIME}
  Capture Page Screenshot
  Click Element  ${ANDROID_BACK} 
  Capture Page Screenshot

Input phone number and login
  Wait Until Element Is Visible    ${PHONE_INPUT}
  Input Text    ${PHONE_INPUT}    %{PHONE_NUMBER}
  Capture Page Screenshot
  Click Element    ${CONTINUE_LOGIN}

  Wait Until Element Is Visible    ${ALLOW_ALERT}    timeout=15
  Click Element    ${ALLOW_ALERT}


Login to Inter-Con App
    Accept android location permission
    Accept android activity permission
    Configure all time location
    Input phone number and login