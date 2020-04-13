*** Settings ***
Documentation  Simple example using SeleniumLibrary
Library  Selenium2Library
Library     OperatingSystem



*** Variables ***
${browser}  Firefox
${URL}  http://practiceselenium.com/practice-form.html




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
    Title Should Be     practice-form


testingradio_application

    Input Text      xpath://input[@name='firstname']    Vinicius Miranda 

    Input Text      xpath://input[@name='lastname']     de Pinho

    select radio button  sex    Female

    select radio button  exp    5

    select checkbox  BlackTea

    select checkbox  RedTea
    
    unselect checkbox  BlackTea
    
    select from list by label   continents  Antartica
    
    select from list by index   continents  6

closebrowser_application
    Sleep   4
    close browser

