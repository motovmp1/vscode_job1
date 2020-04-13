*** Settings ***
Documentation  Simple example using SeleniumLibrary
Library  Selenium2Library
Library     OperatingSystem



*** Variables ***


${browser}  Firefox
${URL}  http://newtours.demoaut.com/




*** Test Cases ***

LoginTest
    ${ff default caps}    Evaluate    sys.modules['selenium.webdriver'].common.desired_capabilities.DesiredCapabilities.FIREFOX    sys,selenium.webdriver
    Create Webdriver    ${browser}    executable_path=/home/elsys/PycharmProjects/robot_framework/TestCase/geckodriver
    Go To    ${URL}

    testinginputbox_application

    testingradio_application

    closenavigator_application
    



*** Keywords ***

testinginputbox_application
    maximize browser window
    set selenium speed  2s
    title should be     Welcome: Mercury Tours


testingradio_application

    Input Text  name:userName   mercury
    Sleep       1
    Input Text  name:password   mercury  
    Sleep       1
    ${title}    Get Title
    Log To Console  ${title}
    Log         ${title}

closenavigator_application
    Sleep       3
    close browser
