*** Settings ***
Documentation  First script to open website
Library  SeleniumLibrary

*** Variables ***
#${URL} =  http://www.robotframeworktutorial.com/front-office/

*** Keywords ***
Open Web Test
    log  With ${BROWSER} open browser to ${URL}
    open browser  about:blank  ${BROWSER}
#    maximize browser window

End Web Test
    Log  Closing test browser
    close browser
#    close all browsers
