*** Settings ***
Documentation  This is basic info about the Byton test cases
Library  SeleniumLibrary

*** Variables ***



*** Test Cases ***
User opens a web-site
    [Documentation]  This is some basic info about the test
    [Tags]  Smoke  Acceptance  Regression
    open browser  http://www.byton.com/  firefox
    go to  http://www.amazon.com
#    open browser  http://www.byton.com  chrome
    wait until page contains  Your Amazon.com
    input text  id=twotabsearchtextbox  "Ferrari 458"
    go to  http://www.byton.com
    go back
    go to  https://www.byton.com/m-byte-concept
    sleep  3
    go to  https://www.byton.com/k-byte-concept
#    click link  id=nav-search-submit-text
#    wait until page contains  result for "Ferrari 458"
#    click link  css=#result_C a.s-access-detail-page
#    wait until page contains  Back to search results
#    click button  id=add-to-cart-button
#    wait until page contains  1 item added to Cart
#    click link  Proceed to Checkout
#    page should contain element  ap_signila_pagelet_title
#    element text should be  ap_signila_pagelet_title  Sign In
    close browser

*** Keywords ***




