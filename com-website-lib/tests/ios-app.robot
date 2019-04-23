*** Settings ***
Library  AppiumLibrary


*** Variables ***



*** Test Cases ***
Start the iOS app
    [Documentation]  Test case for starting the app
    [Tags]  Smoke
    open application  mail


*** Keywords ***
