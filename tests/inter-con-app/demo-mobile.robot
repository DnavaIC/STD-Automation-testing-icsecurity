*** Settings ***
# Pages
Resource    ../../resource/mobile-pages/login-kiosk-NA.robot
Resource    ../../resource/mobile-pages/home-menu.robot
Resource    ../../resource/mobile-pages/Tools-section.robot


*** Test Cases ***
Input Wrong Phone Number
    [Documentation]    Input wrong phone number from environment variables
    ...    Pre-conditions: Android Inter-con security Application KIOSK-NA
    [Tags]    test
    GIVEN Android Inter-con security Application KIOSK-NA
    AND Accept android location permission
    AND Accept android activity permission
    AND Configure all time location
    WHEN Input WRONG phone number
    AND Tap continue login button
    THEN Verify error message when wrong number is input
    

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
    AND Shut down App

Check user with no equipment assigned
    [Documentation]    Validate user with empty items assigned
    ...    Pre-conditions: User phone number with no equipment assigned
    [Tags]    demo    mobile
    GIVEN Android Inter-con security Application KIOSK-NA
    AND Login to Inter-Con App
    WHEN Home menu is displayed
    AND Go to Assigned Equipment
    THEN Check user with no equipment assigned
    AND Shut down App

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
    AND Shut down App
