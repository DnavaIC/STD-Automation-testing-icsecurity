*** Settings ***
Documentation  steps for login page
Library  AppiumLibrary

*** Keywords ***
Accept android device permission
  Wait Until Page Contains Element  id=com.android.permissioncontroller:id/permission_allow_foreground_only_button
  Capture Page Screenshot
  Click Element  id=com.android.permissioncontroller:id/permission_allow_foreground_only_button
  
  Wait Until Page Contains Element    id=com.android.permissioncontroller:id/permission_allow_button
  Capture Page Screenshot
  Click Element  id=com.android.permissioncontroller:id/permission_allow_button

Configure all time location
  Wait Until Element Is Visible    id=com.icsecurity.noakiosk:id/btn_positive_action`
  Capture Page Screenshot
  Click Element  id=com.icsecurity.noakiosk:id/btn_positive_action
  Click Element  id=com.android.permissioncontroller:id/allow_always_radio_button
  Capture Page Screenshot
  Click Element  class=android.widget.ImageButton
  Capture Page Screenshot