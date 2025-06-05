*** Settings ***

Resource    ../../resource/utils/appiumDriver.robot
Resource    ../../resource/mobile-pages/login-kiosk-NA.robot
Resource    ../../resource/mobile-pages/home-menu.robot
Resource    ../../resource/mobile-pages/Tools-section.robot

*** Variables ***
${RESOURCE_PATH}    D:/Repos/STD-Mobile-testing-icsecurity/resource

*** Test Cases ***
Login Inter-Con security App NO AUTH
    [Documentation]    Step by step login IC App
    Given Android Inter-con security Application KIOSK-NA
    AND Accept android location permission
    AND Accept android activity permission
    AND Configure all time location
    AND Input phone number and login
    AND Close confirm shift notification
    THEN Home menu is displayed

Check user with no equipment assigned
    [Documentation]    Pre-conditions: User phone number with no equipment assigned
    [Tags]    demo    mobile
    GIVEN Android Inter-con security Application KIOSK-NA
    AND Login to Inter-Con App
    WHEN Home menu is displayed
    AND Go to Assigned Equipment
    THEN Check user with no equipment assigned

Verify remaining time in Early Clock-Out
    [Tags]    demo    mobile
    GIVEN Android Inter-con security Application KIOSK-NA
    AND Login to Inter-Con App
    WHEN Home menu is displayed
    AND Get remaining time
    THEN Verify early Clock-Out time

Verify No picture error message is displayed in Weapon Inventory
    [Tags]    testing
    GIVEN Android Inter-con security Application KIOSK-NA
    AND Login to Inter-Con App
    WHEN Home menu is displayed
    AND Navigate to Tools Section
    AND Navigate to Shift tools section
    AND Click Vehicle Inventory
    AND Fill all Vehicle inputs
    THEN Validate error message when subitting without picture
