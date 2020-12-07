*** Settings ***
Documentation  Tests Related to Google Ads Page
Resource  ../Resources/Initialization.robot
Resource  ../Resources/PageObjects/HomePage.robot
Resource  ../Resources/PageObjects/GoogleAdsPage.robot
Resource  ../Resources/PageObjects/GoogleAdsCertificationPage.robot
Test Setup  Begin Web Test
Test Teardown  End Web Test

*** Test Cases ***
User should be able to navigate to Google Ads Ceritifcation
    HomePage.Navigate To Google Ads
    GoogleAdsPage.Navigate to Google Ads Certification
    GoogleAdsCertificationPage.Verify Google Ads Certification Page Loaded