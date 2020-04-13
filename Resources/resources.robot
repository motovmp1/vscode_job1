*** Settings ***

Documentation  Resources from others page
Library  Selenium2Library
Library     OperatingSystem


*** Keywords ***

launcher_browser_application

    [Arguments]     ${appbrowser}   ${appurl}       
    ${ff default caps}    Evaluate    sys.modules['selenium.webdriver'].common.desired_capabilities.DesiredCapabilities.FIREFOX    sys,selenium.webdriver
    Create Webdriver    ${appbrowser}   executable_path=/home/elsys/PycharmProjects/robot_framework/TestCase/geckodriver
    Go To    ${appurl}
    sleep       3
    maximize browser window
    Sleep       1
    ${title}    Get Title
    Log To Console  ${title}
    Log         ${title}
    [Return]    ${title}
