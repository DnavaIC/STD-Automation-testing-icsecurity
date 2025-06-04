*** Settings ***
Documentation  steps for home menu page
Library  AppiumLibrary  timeout=10

*** Variables ***
${STARS_CORNER}    xpath=//android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[1]/android.view.View[1]
${ASSIGNED_EQUIPMENT_BTN}    accessibility_id=Assigned\nEquipment
${ASSIGNED_EQUIPMENT_SCREEN}    xpath=//android.view.View[@content-desc]

*** Keywords ***
Home menu is displayed
    Wait Until Element Is Visible    accessibility_id=Home    timeout=10
    Capture Page Screenshot
    
Go to Assigned Equipment
    [Documentation]    Go to profile > click assigned equipment
    Click Element    ${STARS_CORNER}
    Wait Until Element Is Visible    ${ASSIGNED_EQUIPMENT_BTN}    timeout=10
    Click Element    ${ASSIGNED_EQUIPMENT_BTN}

Check user with no equipment assigned
    [Documentation]    Check empty list message
    Sleep    10s
    Wait Until Element Is Visible    ${ASSIGNED_EQUIPMENT_SCREEN}    timeout=10
    Capture Page Screenshot    
    Get Element Attribute    ${ASSIGNED_EQUIPMENT_SCREEN}    attribute=content-desc
    Page Should Contain Text    No equipment assigned    
    