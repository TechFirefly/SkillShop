*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${URL}=  https://skillshop.exceedlms.com/student/catalog

*** Keywords ***
Begin Web Test
    [Arguments]  ${BROWSER}=chrome
    open browser  about:blank  ${BROWSER}
    Maximize Browser Window
    Delete All Cookies
    go to  ${URL}

End Web Test
    close browser