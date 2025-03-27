*** Settings ***

Resource    ../../resource/utils/driver.robot
Resource    ../../resource/pages/login-kiosk-NA.robot

*** Variables ***
${RESOURCE_PATH}    D:/Repos/STD-Mobile-testing-icsecurity/resource

*** Test Cases ***
Login Inter-Con security App NO AUTH
    GIVEN Android Inter-con security Application KIOSK-NA
    AND Accept android location permission
    AND Accept android activity permission
    AND Configure all time location
    AND Input phone number and login
    THEN home login is displayed