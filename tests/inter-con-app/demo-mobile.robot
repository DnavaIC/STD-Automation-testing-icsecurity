*** Settings ***
# Pages
Resource    ../../resource/mobile-pages/login-kiosk-NA.robot
Resource    ../../resource/mobile-pages/home-menu.robot
Resource    ../../resource/mobile-pages/Tools-section.robot

*** Variables ***
${RESOURCE_PATH}    D:/Repos/STD-Mobile-testing-icsecurity/resource

*** Test Cases ***
Validate wrong phone number error message
    [Documentation]    Login with wrong phone number
    ...    Pre-conditions: use wrong phone number
    [Tags]    login    mobile
    Given Android Inter-con security Application KIOSK-NA
    AND Accept android location permission
    AND Accept android activity permission
    AND Configure all time location
    AND Input phone number and login
    AND Close confirm shift notification
    THEN Home menu is displayed

Check user with no equipment assigned
    [Documentation]    Validate user with empty items assigned
    ...    Pre-conditions: User phone number with no equipment assigned
    [Tags]    demo    mobile
    GIVEN Android Inter-con security Application KIOSK-NA
    AND Login to Inter-Con App
    WHEN Home menu is displayed
    AND Go to Assigned Equipment
    THEN Check user with no equipment assigned

Verify remaining time in Early Clock-Out
    [Documentation]    Validate clock out remain minutes message
    ...    Pre-conditions: User with clocked in status
    [Tags]    demo    mobile
    GIVEN Android Inter-con security Application KIOSK-NA
    AND Login to Inter-Con App
    WHEN Home menu is displayed
    AND Verify CLOCK_IN status
    AND Get remaining time
    THEN Verify early Clock-Out time

Verify No picture error message is displayed in Weapon Inventory
    [Documentation]    Submit weapon form without picture
    ...    Pre-conditions: No preconditions
    [Tags]    demo    mobile
    GIVEN Android Inter-con security Application KIOSK-NA
    AND Login to Inter-Con App
    WHEN Home menu is displayed
    AND Navigate to Tools Section
    AND Navigate to Shift tools section
    AND Click Vehicle Inventory
    AND Fill all Vehicle inputs
    AND Tap Submit button
    THEN Validate error message when subitting without picture

Testing locators or steps
    [Documentation]    Just for test some locators or keywords
    [Tags]    test
    Android Inter-con security Application KIOSK-NA
    Login to Inter-Con App
    Home menu is displayed
    Verify CLOCK_IN status
    Navigate to Tools Section
    Navigate to Shift tools section