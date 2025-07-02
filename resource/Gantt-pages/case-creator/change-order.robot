*** Settings ***
Library    Browser
Resource   ../case-creator/case-creator-variables.robot


*** Keywords ***

Switch page to Change Order
    [Documentation]   Switch to the Change Order page
    Switch Page    NEW

Change Order page is open
    [Documentation]   Change Order keywords\n Wait for the Change Order page to be visible
    Wait For Elements State    ${CHANGE_ORDER_LABEL}

Click Change Order Type
    [Documentation]    Click on the Change Order Type dropdown
    Highlight Elements    ${CHANGE_ORDER_TYPE}
    Click    ${CHANGE_ORDER_TYPE}

Select admin type from dropdown
    [Documentation]    Select the Admin type from the dropdown
    Highlight Elements    ${TYPE_ADMIN_DD}
    Click    ${TYPE_ADMIN_DD}