*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${lnkGoogleAdsCertification}  xpath   =   //a[contains(text(), 'Google Ads Certification')]
${lnkGoogleAdsKnowledge}  xpath   =   //a[contains(text(), 'Apply your Google Ads knowledge')]
${lnkGoogleAdsExpertise}  xpath   =   //a[contains(text(), 'Build Upon Your Google Ads Expertise')]
${lnkGoogleAdsSearch}  xpath   =   //a[contains(text(), 'Google Ads Search')]
${lnkGoogleAdsDisplay}  xpath   =   //a[contains(text(), 'Google Ads Display')]
${lnkGoogleAdsVideo}  xpath   =   //a[contains(text(), 'Google Ads Video')]
${lnkShoppingAds}  xpath   =   //a[contains(text(), 'Shopping Ads')]
${lnkGoogleAdsMesurement}  xpath   =   //a[contains(text(), 'Google Ads - Mesurement')]
${lnkGoogleAdsApps}  xpath   =   //a[contains(text(), 'Google Ads Apps')]

*** Keywords ***
Verify Google Ads Page Loaded
    Wait Until Page Contains  Google Ads
    Page Should Contain  Google Ads

Navigate to Google Ads Certification
    CLick Element  ${lnkGoogleAdsCertification}

Navigate to Google Ads Knowledge
    Click Element  ${lnkGoogleAdsKnowledge}

Navigate to Google Ads Expertise
    Click Element  ${lnkGoogleAdsExpertise}

Navigate to Google Ads Search
    Click Element  ${lnkGoogleAdsSearch}

Navigate to Google Ads Display
    Click Element  ${lnkGoogleAdsDisplay}

Navigate to Google Ads Video
    Click Element  ${lnkGoogleAdsVideo}

Navigate to Shopping Ads
    Click Element  ${lnkShoppingAds}

Navigate to Google Ads Mesurement
    Click Element  ${lnkGoogleAdsMesurement}

Navigate to Google Ads Apps
    Click Element  ${lnkGoogleAdsApps}