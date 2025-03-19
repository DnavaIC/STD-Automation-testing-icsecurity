*** Settings ***
Documentation  Simple example using AppiumLibrary
Library  AppiumLibrary

*** Variables ***
${ANDROID_DEVICE_NAME}        Android
${ANDROID_AUTOMATION_NAME}    UiAutomator2
${ANDROID_PLATFORM_NAME}      Android
${ANDROID_APP_PACKAGE}        com.icsecurity.noakiosk
${ANDROID_APP_ACTIVITY}       com.icsecurity.fieldOfficerApp.MainActivity

*** Test Cases ***
Open NO AUTH application and accept all permissions
  Open Test Application
  Accept android device permission
  Configure all time location

*** Keywords ***
Open Test Application
  Open Application   http://localhost:4723     
  ...  automationName=${ANDROID_AUTOMATION_NAME}
  ...  platformName=${ANDROID_PLATFORM_NAME}
  ...  deviceName=${ANDROID_DEVICE_NAME}
  ...  appPackage=${ANDROID_APP_PACKAGE}
  ...  appActivity=${ANDROID_APP_ACTIVITY}

Accept android device permission
  Wait Until Page Contains Element  id=com.android.permissioncontroller:id/permission_allow_foreground_only_button
  Click Element  id=com.android.permissioncontroller:id/permission_allow_foreground_only_button

  Wait Until Page Contains Element    id=com.android.permissioncontroller:id/permission_allow_button
  Click Element  id=com.android.permissioncontroller:id/permission_allow_button

Configure all time location
  Wait Until Element Is Visible    id=com.icsecurity.noakiosk:id/btn_positive_action
  Click Element  id=com.icsecurity.noakiosk:id/btn_positive_action
  Click Element  id=com.android.permissioncontroller:id/allow_always_radio_button
  Click Element  class=android.widget.ImageButton

