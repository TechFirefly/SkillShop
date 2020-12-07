*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${txtbxUserEmail}  xpath   =   //input[@id="identifierId"]
${txtbxPassword}  xpath   =   //input[@name="password"]
#${txtbxPassword}  xpath   =   //input[@aria-label="Enter your password"]
${btnNext}  xpath   =   //button[@class="VfPpkd-LgbsSe VfPpkd-LgbsSe-OWXEXe-k8QpJ VfPpkd-LgbsSe-OWXEXe-dgl2Hf nCP5yc AjY5Oe DuMIQc qIypjc TrZEUc"]
${btnForgotEmail}  xpath   =   //button[contains(text(), 'Forgot email?')]
${btnCreateAccount}  xpath   =   //button[@class="VfPpkd-LgbsSe VfPpkd-LgbsSe-OWXEXe-dgl2Hf ksBjEc lKxP2d uRo0Xe TrZEUc"]
${btnForgotPassword}  xpath   =   //button[contains(text(), 'Forgot password?')]

#Create Account Form Elements
${UserFirstName}  xpath   =   //input[@id="firstName"]
${UserLastName}  xpath   =   //input[@id="lastName"]
${UserName}  xpath   =   //input[@id="username"]
${UserPassword}  xpath   =   //input[@name="Passwd"]
${UserConfirmPassword}  xpath   =   //input[@name="ConfirmPasswd"]
${btnSignInInstead}  xpath   =   //button[@class="VfPpkd-LgbsSe VfPpkd-LgbsSe-OWXEXe-dgl2Hf ksBjEc lKxP2d uRo0Xe TrZEUc"]


*** Keywords ***
User Login
    [Arguments]  ${UserEmail}   ${Password}
    Input Text  ${txtbxUserEmail}  ${UserEmail}
    Click Element  ${btnNext}
    Sleep  5s
    Input Text  ${txtbxPassword}  ${Password}
    Click Element  ${btnNext}

Create User Account
    [Arguments]  ${FirstName}   ${LastName}   ${UserEmail}   ${Password}
    Click Element ${btnCreateAccount}
    Input Text  ${UserFirstName}  ${FirstName}
    Input Text  ${UserLastName}  ${LastName}
    Input Text  ${UserName}  ${UserEmail}
    Input Text  ${UserPassword}  ${Password}
    Input Text  ${UserConfirmPassword}  ${Password}
    Click Element  ${btnNext}

Alternate User Login
    [Arguments]  ${UserEmail}
    Click Element  xpath: //div[@data-identifier="${UserEmail}"]