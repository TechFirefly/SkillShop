*** Settings ***
Library  SeleniumLibrary

*** Variables ***
#Tabs
${lnkOverview}  xpath   =   //a[contains(text(), 'Overview')]
${lnkPrivacyPolicy}  xpath   =   //a[contains(text(), 'Privacy Policy')]
${lnkTermsOfService}  xpath   =   //a[contains(text(), 'Terms of Service')]
${lnkTechnologies}  xpath   =   //a[contains(text(), 'Technologies')]
${lnkFAQ}  xpath   =   //a[contains(text(), 'FAQ')]

#Privacy Policy Options
${lnkDataFrameworks}  xpath   =   //a[contains(text(), 'Data transfer frameworks')]
${lnkKeyterms}  xpath   =   //a[contains(text(), 'Key terms')]
${lnkPartners}  xpath   =   //a[contains(text(), 'Partners')]
${lnkUpdates}  xpath   =   //a[contains(text(), 'Updates')]

*** Keywords ***
Verify Google Privacy Terms Page Loaded
    Wait Until Page Contains  Privacy Policy
    page should contain  Privacy Policy

Navigate Back to Google Skill Shop
    Close Window