*** Settings ***
Resource  ./PO/Landing.robot
Resource  ./PO/Team.robot
Resource  ./PO/TopNav.robot
Resource  ./PO/Landing.robot
Resource  ./PO/TopNav.robot
Resource  ./PO/Team.robot

*** Variables ***
${COMANY_PAGE_TEXT} =  A global set-up, right from the start
${PRODUCTS_PAGE_TEXT} =  A global set-up, right from the start

*** Keywords ***
Go to Landing Page
    Landing.Navigate to

Go to "Company" Page
    TopNav.Click on "Company" Link

Validate "Company" Page
    wait until page contains  ${COMANY_PAGE_TEXT}

Go to "Products" Page
    Click on "Products" Link

Validate "Products" Page
    wait until page contains  ${PRODUCTS_PAGE_TEXT}