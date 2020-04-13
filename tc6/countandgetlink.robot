*** Settings ***
Documentation  Simple example using SeleniumLibrary
Library  Selenium2Library
Library     OperatingSystem


*** Variables ***
${browser}  Firefox
${URL}  http://newtours.demoaut.com/




*** Test Cases ***

Open and Get Title
    ${ff default caps}    Evaluate    sys.modules['selenium.webdriver'].common.desired_capabilities.DesiredCapabilities.FIREFOX    sys,selenium.webdriver
    Create Webdriver    ${browser}    executable_path=/home/elsys/PycharmProjects/robot_framework/TestCase/geckodriver
    Go To    ${URL}
    optionbrowser_application


Text, Testing Radio buttons, check boxes
    testingradioapplication

close browser now
    closebrowser_application




*** Keywords ***

optionbrowser_application
    maximize browser window
    set selenium speed  0.5s
    ${page_tile}    Get Title
    Log   ${page_tile}
    Title Should Be     Welcome: Mercury Tours


testingradio_application
    ${alllinkscount}    Get Element Count    xpath://a
    Log To Console      ${alllinkscount}
    Sleep   2

    @{linkitemslist}    Create List
    : FOR       ${int}  IN RANGE    1   ${alllinkscount}+1
    \   ${linktext}     Get Text        xpath:(//a)[${int}]
    \   Log To Console      ${linktext}


closebrowser_application
    Sleep   4S
    close browser