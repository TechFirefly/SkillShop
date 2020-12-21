*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${lnkGoogleapps}  xpath   =   //a[@aria-label="Google apps"]
${lnkUserAccount}  xpath   =   //a[contains(area-label, 'Google Account:')]
${txtbxIssueSearch}  xpath   =   //input[@class="promoted-search__input"]

#Getting Started Options
${lnkKnowSkillShop}  xpath   =   //a[contains(text(), 'Get to know Skillshop')]
${lnkSetupAccount}  xpath   =   //a[contains(text(), 'Set up your account')]
${lnkWayAroundSkillShop}  xpath   =   //a[contains(text(), 'Find your way around Skillshop')]
${lnkPathsForSpecificProducts}  xpath   =   //a[contains(text(), 'Find learning paths for specific products')]

#Achievements Options
${lnkSkillShopAchievements}  xpath   =   //a[contains(text(), 'Skillshop achievements and certifications')]
${lnkLanguagesSupported}  xpath   =   //a[contains(text(), 'What languages are supported in Skillshop?')]

#Troubleshooting & Support FAQ Options
${lnkSkillshopFAQ}  xpath   =   //a[contains(text(), 'Skillshop FAQ')]
${lnkGDPRSkillshop}  xpath   =   //a[contains(text(), 'GDPR and Skillshop')]

#Footer Elements
${lnkPrivacPolicy}  xpath   =   //a[contains(text(), 'Privacy Policy')]
${lnkServiceTerms}  xpath   =   //a[contains(text(), 'Terms of Service')]

*** Keywords ***
Verify Help Center Page Loaded
    Wait Until Page Contains  How can we help you?
    Page Should Contain  How can we help you?

Navigate Back to Skill Shop
    Close Window

Navigate to UserAccount Options
    Click Element  ${lnkUserAccount}