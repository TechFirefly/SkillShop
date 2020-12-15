*** Settings ***
Library  OperatingSystem
Library  String

*** Variables ***


*** Keywords ***
Read File Content
    [Arguments]  ${FilePath}
    File Should Exist  ${FilePath}
    ${FileContent}=  Get File  ${FilePath}
    [Return]  ${FileContent}

Read File Content Line
    [Arguments]  ${FilePath}  ${LineNumber}
    File Should Exist  ${FilePath}
    ${FileContent}=  Read File Content  ${FilePath}
    ${strFileContent}=  convert to string  ${FileContent}
    ${LineContent}=  Get Line  ${strFileContent}  ${LineNumber}
    [Return]  ${LineContent}

Delete File
    [Arguments]  ${FilePath}
    File Should Exist  ${FilePath}
    Remove File  ${FilePath}