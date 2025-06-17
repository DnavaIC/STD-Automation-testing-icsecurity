*** Settings ***
Documentation  steps for home menu page
Library    AppiumLibrary  timeout=10
Library    ../Library/DemoLibrary.py

*** Variables ***
# HEADER
${STARS_CORNER}    xpath=//android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[1]/android.view.View[1]

# PROFILE
${ASSIGNED_EQUIPMENT_BTN}    accessibility_id=Assigned\nEquipment
${ASSIGNED_EQUIPMENT_SCREEN}    xpath=//android.view.View[@content-desc]

# SHIFT
${REMAINING_TIME}    //android.view.View[@content-desc][11]
${CLOCK_OUT}    accessibility_id=CLOCK OUT

# FOOTER
${TOOLS}    xpath=//android.widget.Button[@content-desc][5]

*** Keywords ***
Verify CLOCK_IN status
    ${is_clocked_in}=    Run Keyword And Return Status    Page Should Contain Text    CLOCKED IN
    Capture Page Screenshot
    IF    not ${is_clocked_in}
        Skip    Status is not CLOCKED IN
    END

Home menu is displayed
    Wait Until Element Is Visible    accessibility_id=Home    timeout=10
    Capture Page Screenshot
    
Go to Assigned Equipment
    [Documentation]    Go to profile > click assigned equipment
    Click Element    ${STARS_CORNER}
    Wait Until Element Is Visible    ${ASSIGNED_EQUIPMENT_BTN}    timeout=10
    Click Element    ${ASSIGNED_EQUIPMENT_BTN}
    Capture Page Screenshot

Check user with no equipment assigned
    [Documentation]    Check empty list message
    Sleep    10s
    Capture Page Screenshot
    Wait Until Element Is Visible    ${ASSIGNED_EQUIPMENT_SCREEN}    timeout=10
    Get Element Attribute    ${ASSIGNED_EQUIPMENT_SCREEN}    attribute=content-desc
    Page Should Contain Text    No equipment assigned

Get remaining time
    [Documentation]    Get home screen remaining time of the shift
    ${TIME_STRING}=    Get Element Attribute    ${REMAINING_TIME}    content-desc
    ${TOTAL_MINUTES}=    Get Total Minutes    ${TIME_STRING}    # Custom Library
    Set Suite Variable    ${TOTAL_MINUTES}
    Capture Page Screenshot

Verify early Clock-Out time
    Wait Until Element Is Visible    ${CLOCK_OUT}    timeout=10
    Click Element    ${CLOCK_OUT}
    Page Should Contain Text    ${TOTAL_MINUTES}
    Capture Page Screenshot

Navigate to Tools Section
    [Documentation]    Navigate to Tools section from home menu
    Click Element    ${TOOLS}
    Sleep    3s
    Capture Page Screenshot
    