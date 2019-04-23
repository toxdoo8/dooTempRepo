*** Settings ***
Resource  ../resources/OS.robot

*** Test Cases ***
Create Some Directories
    [Tags]  OperatingSystem
    OS.Create the base directory
    OS.Create directory 1
    OS.Create directory 2
    OS.Create file 1
    OS.Create file 2
    OS.Create file 3