*** Settings ***
Library  Browser
Documentation    A resource file for demo Gantt using playwight library for robot framework, login page.

*** Variables ***
${page}    https://gantt-qa.bubo.io/#/login
${USERNAME} =     os.getenv('USERNAME')
${PASSWORD} =     os.getenv('PASSWORD')

*** Keywords ***
Gantt Login Page is open
    New Page    ${page}
    Get Text    span    contains    Bubo Gantt Access

Click Corporate login
    Click    //button[@type='button']
    Wait For Elements State    //input[@aria-label='ICS-Corporate-Login'] >> nth=0    enabled    10
    Click    //input[@aria-label='ICS-Corporate-Login'] >> nth=0

Input login credentials
    Fill Text    //input[@type='email']    ${USERNAME}
    Click    //input[@type='submit']
    Fill Secret    //input[@name='passwd']    ${PASSWORD}
    Click    //input[@type='submit']
    Wait For Elements State    //div[contains(@class, 'ant-notification-notice-message')]    visible    10
    Get Text    //div[contains(@class, 'ant-notification-notice-message')]
    Wait For Elements State    //img[@src='/gantt.svg']    hidden    15
    Take Screenshot