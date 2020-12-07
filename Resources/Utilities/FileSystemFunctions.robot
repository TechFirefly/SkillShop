*** Settings ***
Library  OperatingSystem

*** Variables ***


*** Keywords ***
Read File Content
    [Arguments]  ${FilePath}
    File Should Exist  ${FilePath}
    ${FileContent}=  Get File  ${FilePath}
    [Return]  ${FileContent}

Delete File
    [Arguments]  ${FilePath}
    File Should Exist  ${FilePath}
    Remove File  ${FilePath}