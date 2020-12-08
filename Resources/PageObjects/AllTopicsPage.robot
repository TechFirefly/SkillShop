*** Settings ***
Library  SeleniumLibrary
Resource  ./HomePage.robot

*** Variables ***
${lnkGoogleAdsPage}  xpath   =   //ul[@class="cardgrid cardgrid--categorycards"]/li/div/a
${lnkGoogleForEducationPage}  xpath   =   //ul[@class="cardgrid cardgrid--categorycards"]/li[2]/div/a
${lnkGoogleMarketingPlatformPage}  xpath   =   //a[contains(text(), 'Google Marketing Platform')]
${lnkAnalyticsAcademyPage}  xpath   =   //a[contains(text(), 'Analytics Academy')]
${lnkGoogleMyBusinessPage}  xpath   =   //a[contains(text(), 'Google My Business')]
${lnkYoutubePage}  xpath   =   //a[contains(text(), 'YouTube')]
${lnkGoogleAdManagerPage}  xpath   =   //a[contains(text(), 'Google Ad Manager')]
${lnkGoogleCloudPage}  xpath   =   //a[contains(text(), 'Google Cloud')]
${lnkWazeFundamentalsPage}  xpath   =   //a[contains(text(), 'Waze Fundamentals E-Learning')]
${lnkGoogleAdMobPage}  xpath   =   //a[contains(text(), 'Google AdMob')]
${lnkAuthorizedBuyersPage}  xpath   =   //a[contains(text(), 'Authorized Buyers')]
${lnkAndroidAcademyPage}  xpath   =   //a[contains(text(), 'Android Enterprise Academy')]

*** Keywords ***
Verify All Topics Page Loaded
    [Documentation]  Verifies whether the All Topics page is loaded
    Wait Until Page Contains  All Topics
    Page Should Contain  All Topics

Navigate To Google Ads Page
    [Documentation]  Navigates to Google Ads Page
    execute javascript  window.location.reload(true)
    Wait Until Element Is Enabled  ${lnkGoogleAdsPage}
    Click Element  ${lnkGoogleAdsPage}

Navigate To Google For Education
    Wait Until Element Is Enabled  ${lnkGoogleForEducationPage}
    Click Element  ${lnkGoogleForEducationPage}

Navigate To Google Marketing Platform
    Wait Until Element Is Enabled  ${lnkGoogleMarketingPlatformPage}
    Click Element  ${lnkGoogleMarketingPlatformPage}

Navigate To Analytics Academy
    Wait Until Element Is Enabled  ${lnkAnalyticsAcademyPage}
    Click Element  ${lnkAnalyticsAcademyPage}

Navigate To Google My Business
    Wait Until Element Is Enabled  ${lnkGoogleMyBusinessPage}
    Click Element  ${lnkGoogleMyBusinessPage}

Navigate To YouTube
    Wait Until Element Is Enabled  ${lnkYoutubePage}
    Click Element  ${lnkYoutubePage}

Navigate To Google Ads Manager
    Wait Until Element Is Enabled  ${lnkGoogleAdManagerPage}
    Click Element  ${lnkGoogleAdManagerPage}

Navigate To Google Cloud
    Wait Until Element Is Enabled  ${lnkGoogleCloudPage}
    Click Element  ${lnkGoogleCloudPage}

Navigate To Waze Fundamentals
    Wait Until Element Is Enabled  ${lnkWazeFundamentalsPage}
    Click Element  ${lnkWazeFundamentalsPage}

Navigate To Google AdMob
    Wait Until Element Is Enabled  ${lnkGoogleAdMobPage}
    Click Element  ${lnkGoogleAdMobPage}

Navigate To Authorized Buyers
    Wait Until Element Is Enabled  ${lnkAuthorizedBuyersPage}
    Click Element  ${lnkAuthorizedBuyersPage}

Navigate To Android Enterprise Academy
    Wait Until Element Is Enabled  ${lnkAndroidAcademyPage}
    Click Element  ${lnkAndroidAcademyPage}

Navigate To Home Page
    HomePage.Navigate Back To Home Page