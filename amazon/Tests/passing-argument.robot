*** Settings ***
Documentation  Test scalar vaeriable
Library  SeleniumLibrary

*** Variables ***


*** Test Cases ***
Test open browser to amazon
    Begin Web Test  http://www.byton.com  firefox
    End Web Test

*** Keywords ***
Begin Web Test
    [Arguments]  ${url}  ${browser}
    open browser  ${url}  ${browser}

End Web Test
    close browser