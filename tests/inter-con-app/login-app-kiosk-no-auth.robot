*** Settings ***

Resource    ../../resource/utils/driver.robot
Resource    ../../resource/pages/login-kiosk-NA.robot

*** Variables ***
${RESOURCE_PATH}    D:/Repos/STD-Mobile-testing-icsecurity/resource

*** Test Cases ***
Open NO AUTH application and accept all permissions
    Open Android Inter-con security Application KIOSK-NA
    Accept android location permission
    Accept android activity permission
    Configure all time location
    Input phone number and login