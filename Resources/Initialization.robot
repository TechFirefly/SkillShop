*** Settings ***
Library  SeleniumLibrary
Library  AppiumLibrary
Library  OperatingSystem
Library  Process

*** Variables ***
${URL}=  https://skillshop.exceedlms.com/student/catalog

@{_tmp}
    ...  browserName: Chrome,
    ...  platform: Windows 10,
    ...  version: latest,
    ...  username: Suheb_TechFirefly,
    ...  accessKey: f47f0d3c-7c1b-4eb8-bd07-c603b8ca2d14,
    ...  name: TestSuite,
    ...  build: My-Selenium-Robot-Test

${capabilities}  ${EMPTY.join(${_tmp})}
${remote_url}  https://ondemand.saucelabs.com/wd/hub

*** Keywords ***
Begin Web Test
    [Arguments]  ${BROWSER}=chrome
    open browser  about:blank  ${BROWSER}
    #Maximize Browser Window
    Delete All Cookies
    go to  ${URL}
    Run  appium
    Run  cd AppData\Local\Android\Sdk\tools
    Run  emulator -avd Pixel_4_Android_11
    #Run Process  python -c  appium
    Open Application  http://localhost:4723/wd/hub   platformName=Android   deviceName=emulator-5554   appPackage=com.android.chrome   appActivity=org.chromium.chrome.browser.document.ChromeLauncherActivity   automationName=Uiautomator2
    Go To Url  ${URL}

End Web Test
    close browser

#Begin Web Test
    #[Arguments]  ${BROWSER}=chrome
    #open browser  ${URL}  browser=${BROWSER}
    #...  remote_url=${remote_url}
    #...  desired_capabilities=${capabilities}