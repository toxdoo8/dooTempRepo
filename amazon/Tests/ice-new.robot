*** Settings ***
Documentation  This is basic info about the Byton test cases
Library  SeleniumLibrary

*** Variables ***



*** Test Cases ***
User opens byton web-site 1 Smoke
    [Documentation]  This is some basic info about the test
    [Tags]  Smoke  Acceptance
#    open browser  http://www.amazon.com  firefox
    open browser  http://www.byton.com  firefox
    sleep  2
    close browser

User opens byton web-site acceptance
    [Documentation]  This is some basic info about the test
    [Tags]  Smoke  Acceptance
#    open browser  http://www.amazon.com  firefox
    open browser  http://www.byton.com  firefox
    sleep  2
    close browser

User opens byton web-site 2 Regression 1
    [Documentation]  Test for open browser 2nd time
    [Tags]  Regression
#    open browser  http://www.amazon.com  firefox
    open browser  http://www.amazon.com  firefox
    sleep  2
    close all browsers

User opens byton web-site 3 Regression 2
    [Documentation]  Test for open browser 2nd time
    [Tags]  Regression
#    open browser  http://www.amazon.com  firefox
    open browser  http://www.yahoo.com  firefox
    sleep  2
    close all browsers

Test case 4
    [Documentation]  test case 4 title
    [Tags]  Smoke
    log  I am test case 1 of API feature

*** Keywords ***
