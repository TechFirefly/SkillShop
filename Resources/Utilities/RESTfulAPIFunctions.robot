*** Settings ***
Library  REST    ${baseAPIUrl}

*** Variables ***
${baseAPIUrl}  localhost:8273/

*** Keywords ***
Intialize API Parameters
    [Arguments]  ${APIUrl}