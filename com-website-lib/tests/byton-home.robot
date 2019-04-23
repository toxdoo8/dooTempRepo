*** Settings ***
Documentation  First script to open website
Resource  ..${/}resources${/}FrontOfficeApp.robot
Resource  ..${/}resources${/}CommonWeb.robot
Library  Dialogs

Test Setup  Open Web Test
Test Teardown  End Web Test

*** Variables ***
#${URL} =  http://www.robotframeworktutorial.com/front-office/
${URL} =  http://www.byton.com
${BROWSER} =  firefox
${MY_MOOD} =  No Sure

*** Test Cases ***
Test "Compnay" page and validate page loads correctly
    [Documentation]  Document line for test case 1
    [Tags]  Smoke
    log  Close test browser
    FrontOfficeApp.Go to Landing Page
    FrontOfficeApp.Go to "Company" Page
    FrontOfficeApp.Validate "Company" Page

Test "Products" page and validate page loads correctly
    [Documentation]  Document line for test case 1
    [Tags]  Regression
    log  Close test browser
    FrontOfficeApp.Go to Landing Page
    FrontOfficeApp.Go to "Products" Page
    FrontOfficeApp.Validate "Products" Page

Should be albe to access "Byton Home" page
    [Documentation]  Document line for test case 1
    [Tags]  Regression
    Login to byton website as  chang@bytong.com  abc123

*** Keywords ***
My Mood Right Now
    log  Current MY_MOOD value = ${MY_MOOD}
    ${current_mood} =  get selection from user  What is your mood now?  Good  Bad  Ugly  Happy
    set global variable  ${MY_MOOD}  ${current_mood}
    log  New moood value is ${MY_MOOD}
    execute manual step  Do something manually!  Mood is not set!!!
#    pause execution

I am in a Good Mood Now
    log  I am happy now!!!