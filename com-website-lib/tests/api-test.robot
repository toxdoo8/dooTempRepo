*** Settings ***
Documentation  There are some API tests
Resource  ../resources/API/Github.robot

# robot -d /results/api tests/api-test.robot

Test Setup
Test Teardown

*** Variables ***



*** Test Cases ***
Make a simple REST API call
    [Tags]  API
    Check Github Username

Display emoji from Github
    [Tags]  API
    Check Github Username
