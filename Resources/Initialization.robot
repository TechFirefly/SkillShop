*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${BROWSER}=  Chrome
${URL}=  https://skillshop.exceedlms.com/student/catalog

*** Keywords ***
Begin Web Test
    open browser  about:blank  ${BROWSER}
    Maximize Browser Window
    go to  ${URL}

End Web Test
    close browser