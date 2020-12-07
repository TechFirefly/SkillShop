*** Settings ***
Library  SeleniumLibrary

*** Variables ***


*** Keywords ***
Verify Google Privacy Terms Page Loaded
    Wait Until Page Contains  Privacy Policy
    page should contain  Privacy Policy

Navigate Back to Google Skill Shop
    Close Window