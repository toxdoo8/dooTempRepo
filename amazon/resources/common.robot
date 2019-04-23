*** Settings ***
Documentation  demo for common lib
Library  SeleniumLibrary
Library  SeleniumLibrary

*** Keywords ***
Begin Web Test
    open browser  about:blank  firefox

End Web Test
    close browser