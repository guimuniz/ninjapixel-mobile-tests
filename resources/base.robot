*** Settings ***
Library     AppiumLibrary
Library     String

Library     ../libs/api_helper.py

Resource    ${device}/elements.robot

Resource    ${device}/keys/login.robot
Resource    ${device}/keys/cart.robot
Resource    ${device}/keys/components.robot

*** Variables ***
${URL}              http://localhost:4723/wd/hub
${apk}              ${CURDIR}/app/pixel.apk
${app}              ${CURDIR}/app/pixel.app
${timeout}          10

*** Keywords ***
### hooks
Abrir App
    Set Appium Timeout  ${timeout}

    Run Keyword if      "${device}" == "android"
    ...     Start Android

    Run Keyword if      "${device}" == "ios"
    ...     Start iOS


Start Android
    Open Application    ${URL}
    ...                 platformName=Android
    ...                 deviceName=Pastel
    ...                 app=${apk}
    ...                 automationName=uiautomator2
    ...                 autoGrantPerssions=true
    ...                 # udid=emulator-5554


Start iOS
    Open Application    ${URL}
    ...                 platformName=iOS
    ...                 platformVersion=13.4
    ...                 deviceName=iPhone 11 Pro Max
    ...                 app=${app}
    ...                 automationName=XCUITest
    ...                 autoGrantPerssions=true
    ...                 udid=0056EAB0-EA92-445A-B846-9B312B4556BB

    Click Text          Allow


Fechar App
    Capture Page Screenshot
    Close Application





