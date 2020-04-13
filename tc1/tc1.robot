*** Settings ***
Documentation  Simple example using SeleniumLibrary
Library  Selenium2Library
Library     OperatingSystem

# teste comment

*** Variables ***
${browser}  Firefox
${URL}  http://practiceselenium.com/practice-form.html




*** Test Cases ***

LoginTest
    ${ff default caps}    Evaluate    sys.modules['selenium.webdriver'].common.desired_capabilities.DesiredCapabilities.FIREFOX    sys,selenium.webdriver
    Create Webdriver    ${browser}    executable_path=/home/elsys/PycharmProjects/robot_framework/TestCase/geckodriver
    Go To    ${URL}
    ${title}    Get Title
    Log To Console  ${title}

Testing Radio buttons and check boxes
    testingradioapplication



*** Keywords ***

testinginputboxapplication
    maximize browser window
    set selenium speed  3s
    


testingradioapplication
    sleep  3s
    select radio button  sex    Female
    sleep  3s
    select radio button  exp    5
    sleep  10s
    select checkbox  BlackTea
    sleep  5s
    select checkbox  RedTea
    sleep  5s
    unselect checkbox  BlackTea
    sleep  3s
    select from list by label   continents  Antartica
    sleep  2s
    select from list by index   continents  6
    sleep   1    
    # This is close browser step
    close browser
