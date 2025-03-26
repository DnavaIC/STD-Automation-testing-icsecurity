*** Settings ***
Documentation  steps for login page
Library  AppiumLibrary
Resource    ../utils/capturePage.robot

*** Variables ***

${WHILE_USING_APP}       id=com.android.permissioncontroller:id/permission_allow_foreground_only_button
${ALLOW_ACTIVITY}        id=com.android.permissioncontroller:id/permission_allow_button
${CONFIGURE_LOCATION}    id=com.icsecurity.noakiosk:id/btn_positive_action
${ALLOW_ALL_TIME}        id=com.android.permissioncontroller:id/allow_always_radio_button
${ANDROID_BACK}          class=android.widget.ImageButton

*** Keywords ***
Accept android location permission
  Wait Until Page Contains Element  ${WHILE_USING_APP} 
  Capture Screenshot
  Click Element  ${WHILE_USING_APP}

Accept android activity permission  
  Wait Until Page Contains Element    ${ALLOW_ACTIVITY}
  Capture Screenshot
  Click Element  ${ALLOW_ACTIVITY}

Configure all time location
  Wait Until Element Is Visible    ${CONFIGURE_LOCATION}
  Capture Screenshot
  Click Element  ${CONFIGURE_LOCATION}
  Click Element  ${ALLOW_ALL_TIME}
  Capture Screenshot
  Click Element  ${ANDROID_BACK} 
  Capture Screenshot