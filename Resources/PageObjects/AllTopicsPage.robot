*** Settings ***
Library  SeleniumLibrary
Resource  ../HomePage.robot

*** Variables ***
${lnkGoogleAds}  xpath   =   //a[contains(text(), 'Google Ads')]
${lnkGoogleForEducation}  xpath   =   //a[contains(text(), 'Google for Education')]
${lnkGoogleMarketingPlatform}  xpath   =   //a[contains(text(), 'Google Marketing Platform')]
${lnkAnalyticsAcademy}  xpath   =   //a[contains(text(), 'Analytics Academy')]
${lnkGoogleMyBusiness}  xpath   =   //a[contains(text(), 'Google My Business')]
${lnkYoutube}  xpath   =   //a[contains(text(), 'YouTube')]
${lnkGoogleAdManager}  xpath   =   //a[contains(text(), 'Google Ad Manager')]
${lnkGoogleCloud}  xpath   =   //a[contains(text(), 'Google Cloud')]
${lnkWazeFundamentals}  xpath   =   //a[contains(text(), 'Waze Fundamentals E-Learning')]
${lnkGoogleAdMob}  xpath   =   //a[contains(text(), 'Google AdMob')]
${lnkAuthorizedBuyers}  xpath   =   //a[contains(text(), 'Authorized Buyers')]
${lnkAndroidAcademy}  xpath   =   //a[contains(text(), 'Android Enterprise Academy')]

*** Keywords ***
Verify All Topics Page Loaded
    [Documentation]  Verifies whether the All Topics page is loaded
    Wait Until Page Contains  All Topics
    Page Should Contain  All Topics

Navigate To Google Ads Page
    [Documentation]  Navigates to Google Ads Page
    Wait Until Element Is Enabled  ${lnkGoogleAds}
    Click Element  ${lnkGoogleAds}

Navigate To Google For Education
    Click Element  ${lnkGoogleForEducation}

Navigate To Google Marketing Platform
    Click Element  ${lnkGoogleMarketingPlatform}

Navigate To Analytics Academy
    Click Element  ${lnkAnalyticsAcademy}

Navigate To Google My Business
    Click Element  ${lnkGoogleMyBusiness}

Navigate To YouTube
    Click Element  ${lnkYoutube}

Navigate To Google Ads Manager
    Click Element  ${lnkGoogleAdManager}

Navigate To Google Cloud
    Click Element  ${lnkGoogleCloud}

Navigate To Waze Fundamentals
    Click Element  ${lnkWazeFundamentals}

Navigate To Google AdMob
    Click Element  ${lnkGoogleAdMob}

Navigate To Authorized Buyers
    Click Element  ${lnkAuthorizedBuyers}

Navigate To Android Enterprise Academy
    Click Element  ${lnkAndroidAcademy}

Navigate To Home Page
    Navigate B