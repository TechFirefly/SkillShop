*** Settings ***
Library  SeleniumLibrary
Library  AppiumLibrary
Library  OperatingSystem
Library  Process
Library  Collections

*** Variables ***
${URL}=  https://skillshop.exceedlms.com/student/catalog

@{_DesktopTmp}
    ...  browserName: Chrome,
    ...  platform: Windows 10,
    ...  version: latest,
    ...  username: nathan1301,
    ...  accessKey: 8952f90aec134294a2cccf3d6f6be870,
    ...  name: TestSuite,
    ...  build: My-Selenium-Robot-Test

${DesktopCapabilities}  ${EMPTY.join(${_DesktopTmp})}
${DesktopRemote_url}  https://ondemand.saucelabs.com/wd/hub

@{_MobileTmp}
    ...  platformName: Android,
    ...  platformVersion: 8.0,
    ...  deviceName: Samsung Galaxy S7,
    ...  deviceOrientation: portrait,
    ...  browserName: Chrome,
    ...  appiumVersion: 1.18.1,
    ...  username: nathan1301,
    ...  accessKey: 8952f90aec134294a2cccf3d6f6be870

${MobileCapabilities}  ${EMPTY.join(${_MobileTmp})}
${MobileRemote_url}  https://nathan1301:8952f90aec134294a2cccf3d6f6be870@ondemand.us-west-1.saucelabs.com:443/wd/hub

*** Keywords ***
#Begin Web Test
    #[Arguments]  ${BROWSER}=chrome
    #open browser  about:blank  ${BROWSER}
    #Maximize Browser Window
    #Delete All Cookies
    #go to  ${URL}
    #Run  appium
    #Run  cd AppData\Local\Android\Sdk\tools
    #Run  emulator -avd Pixel_4_Android_11
    #Run Process  python -c  appium
    #Open Application  http://localhost:4723/wd/hub   platformName=Android   deviceName=emulator-5554   appPackage=com.android.chrome   appActivity=org.chromium.chrome.browser.document.ChromeLauncherActivity   automationName=Uiautomator2
    #Go To Url  ${URL}

End Web Test
    close browser

#Begin Web Test
    #[Arguments]  ${BROWSER}=chrome
    #open browser  ${URL}  browser=${BROWSER}
    #...  remote_url=${DesktopRemote_url}
    #...  desired_capabilities=${DesktopCapabilities}

Begin Web Test
    Open Application  ${MobileRemote_url}
    ...  desired_capabilities=${MobileCapabilities}

    Go To Url  ${URL}