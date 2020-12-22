*** Settings ***
Documentation  Tests Related to HomePage
Resource  ../Resources/Initialization.robot
Resource  ../Resources/PageObjects/HomePage.robot
Resource  ../Resources/PageObjects/Login.robot
Resource  ../Resources/PageObjects/HelpCenterPage.robot
Resource  ../Resources/PageObjects/AllTopicsPage.robot
Resource  ../Resources/PageObjects/GooglePrivacyTermsPage.robot
Resource  ../Resources/PageObjects/GoogleAdsPage.robot
Resource  ../Resources/PageObjects/GoogleAdsCertificationPage.robot

#Test Setup  Begin Web Test
#Test Teardown  End Web Test

*** Test Cases ***
#User should be able to navigate to All Topics
    #HomePage.Verify HomePage Loaded
    #HomePage.Navigate To All Topics

#User should be able to navigate to Help Center
    #HomePage.Navigate To Help Center
    #sleep  5s
    #HelpCenterPage.Verify Help Center Page Loaded

#User should be able to browse topics
    #HomePage.Navigate To Browse
    #sleep  5s
    #AllTopicsPage.Verify All Topics Page Loaded
    #AllTopicsPage.Navigate To Google Ads Page
    #GoogleAdsPage.Verify Google Ads Page Loaded

#User should be able to login
    #HomePage.Verify HomePage Loaded
    #HomePage.User Login

#User should be able to Search for Google Ads
    #HomePage.Search For  Google Ads

#User should be able to Navigate to Google Privacy Terms
    #Homepage.Navigate To Google Privacy Terms
    #GooglePrivacyTermsPage.Verify Google Privacy Terms Page Loaded

#User should Get from API
    #HomePage.API Get Request

#User should read from excel
    #HomePage.Read From Excel

User should read email
    HomePage.Read Gmail Content