*** Settings ***
Documentation  Mobile driver inicialization
Library  AppiumLibrary


# Maybe hardcode the values here is not the best approach, but for this example is ok
*** Variables ***
${ANDROID_DEVICE_NAME}        Android
${ANDROID_AUTOMATION_NAME}    UiAutomator2
${ANDROID_PLATFORM_NAME}      Android
${ANDROID_APP_PACKAGE_KIOSKNA}        com.icsecurity.noakiosk
${ANDROID_APP_ACTIVITY_KIOSKNA}       com.icsecurity.fieldOfficerApp.MainActivity

*** Keywords ***

Android Inter-con security Application KIOSK-NA
  Open Application   http://localhost:4723     
  ...  automationName=${ANDROID_AUTOMATION_NAME}
  ...  platformName=${ANDROID_PLATFORM_NAME}
  ...  deviceName=${ANDROID_DEVICE_NAME}
  ...  appPackage=${ANDROID_APP_PACKAGE_KIOSKNA}
  ...  appActivity=${ANDROID_APP_ACTIVITY_KIOSKNA}