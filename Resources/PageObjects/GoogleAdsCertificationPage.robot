*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${txtbxTopicSearch}  xpath   =   //input[@id="topic-search"]

*** Keywords ***
Verify Google Ads Certification Page Loaded
    Wait Until Page Contains  Google Ads Certification
    Page Should Contain  Google Ads Certification