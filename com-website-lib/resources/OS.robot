*** Settings ***
Library  OperatingSystem
Library  Process

*** Variables ***
${out_directory} =  Outputs
${directory_1} =  first directory
${directory_2} =  second directory
${file_1} =  first file.txt
${file_2} =  second file.txt
${file_3} =  third file.txt

*** Keywords ***
Create the base directory
    create directory  ${out_directory}
    should exist  ${out_directory}

Create directory 1
    ${directory_path} =  join path  ${out_directory}  ${directory_1}
    create directory  ${directory_path}
    log  Verify ${directory_path} exists
    should exist  ${directory_path}

Create directory 2
    ${directory_path} =  join path  ${out_directory}  ${directory_2}
    create directory  ${directory_path}
    log  Verify ${directory_path} exists
    should exist  ${directory_path}

Create file 1
    ${file_name} =  join path  ${out_directory}  ${directory_1}  ${file_1}
    log  ${file_name}
    create file  ${file_name}  Hello World!
    log  Verify ${file_name} exists
    should exist  ${file_name}

Create file 2
    ${file_name} =  join path  ${out_directory}  ${directory_2}  ${file_2}
    log  ${file_name}
    create file  ${file_name}  Hello World!
    log  Verify ${file_name} exists
    should exist  ${file_name}

Create file 3
    ${file_name} =  join path  ${out_directory}  ${directory_2}  ${file_3}
    log  ${file_name}
    create file  ${file_name}  Hello World!
    copy
    log  Verify ${file_name} exists
    should exist  ${file_name}