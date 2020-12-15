*** Settings ***
Library  SeleniumLibrary
Resource  ./HomePage.robot

*** Variables ***
${lnkGoogleAdsPage}  xpath   =   //ul[@class="cardgrid cardgrid--categorycards"]/li/div/a
${lnkGoogleForEducationPage}  xpath   =   //ul[@class="cardgrid cardgrid--categorycards"]/li[2]/div/a
${lnkGoogleMarketingPlatformPage}  xpath   =   //ul[@class="cardgrid cardgrid--categorycards"]/li[3]/div/a
${lnkAnalyticsAcademyPage}  xpath   =   //ul[@class="cardgrid cardgrid--categorycards"]/li[4]/div/a
${lnkGoogleMyBusinessPage}  xpath   =   //ul[@class="cardgrid cardgrid--categorycards"]/li[5]/div/a
${lnkYoutubePage}  xpath   =   //ul[@class="cardgrid cardgrid--categorycards"]/li[6]/div/a
${lnkGoogleAdManagerPage}  xpath   =   //ul[@class="cardgrid cardgrid--categorycards"]/li[7]/div/a
${lnkGoogleCloudPage}  xpath   =   //ul[@class="cardgrid cardgrid--categorycards"]/li[8]/div/a
${lnkWazeFundamentalsPage}  xpath   =   //ul[@class="cardgrid cardgrid--categorycards"]/li[9]/div/a
${lnkGoogleAdMobPage}  xpath   =   //ul[@class="cardgrid cardgrid--categorycards"]/li[10]/div/a
${lnkAuthorizedBuyersPage}  xpath   =   //ul[@class="cardgrid cardgrid--categorycards"]/li[11]/div/a
${lnkAndroidAcademyPage}  xpath   =   //ul[@class="cardgrid cardgrid--categorycards"]/li[12]/div/a

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