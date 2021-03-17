*** Settings ***
#Library  SeleniumLibrary
Library  AppiumLibrary
Library  String
Resource  ./Login.robot
Resource  ../Utilities/FileSystemFunctions.robot
Resource  ../Utilities/EmailFunctions.robot
Resource  ../Utilities/RESTfulAPIFunctions.robot
Resource  ../Utilities/ExcelFunctions.robot

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
${lnkGoogleLogo}  xpath   =   //a[@class="appheader__titleimage u-org--header"]
${btnHome}  xpath   =   //a[@class="appnav__link hint hint--bottom u-org--header u-orgcolor--borderhover"]
${lnkHelpCenter}  xpath   =   //a[@data-hint="Help Center"]
${lnkAboutSkillShop}  xpath   =   //a[@data-hint="About SkillShop"]
${lnkBrowse}  xpath   =   //a[@data-hint="Browse"]
${drpdwnTopics}  xpath   =   //button[@class="button button--toggle appheader__categoriesbutton u-org--header"]
${txtbxAppSearch}  id   =   app-search

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
${lnkAllActivities}  xpath   =   //a[contains(text(), 'All Activities')]

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

Navigate To About Skillshop
    Click Element  ${lnkAboutSkillShop}
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
    Click Element  ${lnkIntellumTerms}
    Switch Window  NEW

Navigate To Intellum Page
    Click Element  ${lnkIntellumPage}
    Switch Window  NEW

Navigate Back To Home Page
    Click Element  ${btnHome}

Search For
    [Arguments]  ${SearchString}
    AppiumLibrary.Input Text  ${txtbxAppSearch}  ${SearchString}
    #AppiumLIbrary.Press Keys  ${txtbxAppSearch}  RETURN

User Login
    Click Element  ${btnLogIn}
    Sleep  5s
    Click Element  ${btnSignInGoogle}
    ${UserEmail}=  Read File Content Line  LoginCredentials.txt  0
    ${Password}=  Read File Content Line  LoginCredentials.txt  0
    ${present}=  run keyword and return status  Element Should Be Visible  xpath=//div[@data-identifier="${UserEmail}"]
    Run Keyword IF  ${present}  Login.Alternate User Login  ${UserEmail}
    ...             ELSE  Login.User Login  ${UserEmail}  ${Password}

User Logout
    Click Element  ${btnCurrentUser}
    Click Element  ${lnkLogout}

Send Test Email
    Send Email  harsha_chanti37@yahoo.co.in  testsubject  testbody

Read Gmail Content
    EmailFunctions.Connect to Mailbox  imap.googlemail.com  harshapenumetcha37@gmail.com  Spandana37&
    EmailFunctions.Email Verification  harsha_chanti37@yahoo.co.in

API Get Request
    Initialize Base Url  http://localhost:51045
    Get Method  /api/authors  200

Read From Excel
    ExcelFunctions.Open Excel File  TestExcel.xlsx
    ExcelFunctions.Read Excel Cell Value  Sheet1  1  1