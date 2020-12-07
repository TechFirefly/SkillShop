*** Settings ***
Library  SeleniumLibrary

*** Variables ***


*** Keywords ***
Verify Help Center Page Loaded
    Wait Until Page Contains  How can we help you?
    Page Should Contain  How can we help you?

Navigate Back to Google Skill Shop
    Close Window