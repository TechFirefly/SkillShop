*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${lnkGoogleAdsCertification}  xpath   =   //a[contains(text(), 'Google Ads Certification')]

*** Keywords ***
Verify Google Ads Page Loaded
    Wait Until Page Contains  Google Ads
    Page Should Contain  Google Ads

Navigate to Google Ads Certification
    CLick Element  ${lnkGoogleAdsCertification}