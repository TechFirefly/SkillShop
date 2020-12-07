*** Settings ***
Library  SeleniumLibrary
Library  String
Resource  ../Resources/Utilities/FileSystemFunctions.robot
Resource  ../Resources/PageObjects/Login.robot

*** Variables ***
#Landing Page Elements
${BlockElement1}=  Get WebElement xpath: //span[@class='consent__text']
${BlockElement2}=  Get WebElement xpath: //div[@class='consent__content']
${BlockElement3}=  Get WebElement xpath: //div[@id='gdpr-consent']
#${btnGetStarted}  xpath   =   //a[@class="button button--primary"]
${btnGetStarted}  xpath   =   //*[@id="catalog_blank_state_page"]/p[2]/a
${btnLogIn}  xpath   =   //button[@class="button button--primary button--appheader"]
${btnSignInGoogle}  xpath   =   //a[@class="button button--googlelogin"]

#Top Bar Elements
${lnkGoogleLogo}  xpath   =   //a[@class="appheader__titleimage"]
${btnHome}  xpath   =   //a[@class="appnav__link hint hint--bottom u-org--header u-orgcolor--borderhover"]
${lnkHelpCenter}  xpath   =   //a[@data-hint="Help Center"]
${lnkAboutSkillShop}  xpath   =   //a[@data-hint="About SkillShop"]
${lnkBrowse}  xpath   =   //a[@data-hint="Browse"]
${drpdwnTopics}  xpath   =   //button[@class="button button--toggle appheader__categoriesbutton u-org--header"]

#Topics Dropdown Elements
${lnkGoogleAds}  xpath   =   //button[@id="categoriesmenu-53-select"]
${lnkGoogleForEducation}  xpath   =   //button[@id="categoriesmenu-2559-select"]
${lnkGoogleMarketingPlatform}  xpath   =   //button[@id="categoriesmenu-86-select"]
${lnkAnalyticsAcademy}  xpath   =   //a[contains(text(), 'Analytics Academy')]
${lnkGoogleMyBusiness}  xpath   =   //a[contains(text(), 'Google My Business')]
${lnkYouTube}  xpath   =   //a[contains(text(), 'YouTube')]
${lnkGoogleAdManager}  xpath   =   //a[contains(text(), 'Google Ad Manager')]
${lnkGoogleCloud}  xpath   =   //a[contains(text(), 'Google Cloud')]
${lnkWazeFundamentals}  xpath   =   //a[contains(text(), 'Waze Fundamentals E-Learning')]
${lnkGoogleAdMob}  xpath   =   //a[contains(text(), 'Google AdMob')]
${lnkAuthorizedBuyers}  xpath   =   //a[contains(text(), 'Authorized Buyers')]
${lnkAndroidEnterpriseAcademy}  xpath   =   //a[contains(text(), 'Android Enterprise Academy')]

#Footer Elements
${lnkGoogleTerms}  xpath   =   //a[contains(text(), 'Google Privacy & Terms')]
${lnkIntellumTerms}  xpath   =   //a[contains(text(), 'Intellum Privacy & Terms')]
${drpdwnLangSelect}  xpath   =   //button[@id="app-locale-trigger"]
${lnkIntellumPage}  xpath   =   //a[@class="appfooter__link appfooter__link--poweredby"]

#Current User Menu
${btnCurrentUser}  xpath   =   //button[@class="appheader__button appheader__button--appusermenu navmenu__trigger u-org--header"]
${lnkMyProfile}  xpath   =   //a[contains(text(), 'My Profile')]
${lnkFavorites}  xpath   =   //a[contains(text(), 'Favorites')]
${lnkHistory}  xpath   =   //a[contains(text(), 'History')]
${lnkLogout}  xpath   =   //a[contains(text(), 'Log Out')]

*** Keywords ***
Verify HomePage Loaded
    [Documentation]  Verifies whether the Home Page is loaded
    Wait Until Page Contains  Google professional tools and solutions
    Page Should Contain  Google professional tools and solutions

Navigate To All Topics
    Wait Until Page Contains  Explore courses to get started
    Sleep  10s
    Click Element  ${btnGetStarted}

Navigate To Help Center
    Click Element  ${lnkHelpCenter}
    Switch Window  NEW

Navigate To Browse
    [Documentation]  Navigates to All Topics Page
    Click Element  ${lnkBrowse}

Navigate To Google Ads
    Verify HomePage Loaded
    Sleep  5s
    Mouse Over  ${drpdwnTopics}
    Click Element  ${drpdwnTopics}
    Click Element  ${lnkGoogleAds}

Navigate To Google Privacy Terms
    Click Element  ${lnkGoogleTerms}
    Switch Window  NEW

Navigate To Intellum Terms
    Click Element  xpath: ${lnkIntellumTerms}
    Switch Window  NEW

Navigate To Intellum Page
    Click Element  xpath: ${lnkIntellumPage}
    Switch Window  NEW

Navigate Back To Home Page
    Click Element  xpath: ${btnHome}

Search For
    [Arguments]  ${SearchString}
    Input Text  id: app-search  ${SearchString}
    Press Keys  id: app-search  RETURN

User Login
    Click Element  ${btnLogIn}
    Sleep  5s
    Click Element  ${btnSignInGoogle}
    ${FileContent}=  FileSystemFunctions.Read File Content  LoginCredentials.txt
    ${strFileContent}=  convert to string  ${FileContent}
    ${UserEmail}=  Get Line  ${strFileContent}  0
    ${Password}=  Get Line  ${strFileContent}  1
    ${present}=  run keyword and return status  Element Should Be Visible  xpath=//div[@data-identifier="${UserEmail}"]
    Run Keyword IF  ${present}  Login.Alternate User Login  ${UserEmail}
    ...             ELSE  Login.User Login  ${UserEmail}  ${Password}

User Logout
    Click Element  ${btnCurrentUser}
    Click Element  ${lnkLogout}