*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${lnkStartExploring}  xpath   =   //a[contains(text(), 'Start exploring')]
${lnkHelpCenter}  xpath   =   //a[contains(text(), 'Help Center')]

*** Keywords ***
Start Exploring SkillShop
    Click ELement  ${lnkStartExploring}

Navigate To Help Center
    Click Element  ${lnkHelpCenter}

Navigate Back to SkillShop
    Close Window