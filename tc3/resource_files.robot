*** Settings ***
Documentation  Simple example using SeleniumLibrary
Library  Selenium2Library
Library     OperatingSystem
Resource    /home/elsys/Documents/VSCODE/Robot/Resources/resources.robot



*** Variables ***


${browser}  Firefox
${URL}  http://newtours.demoaut.com/




*** Test Cases ***

LoginTest

    ${page_title}   launcher_browser_application   ${browser}   ${URL}
    

    # This is title and speed
    maximize browser window
    set selenium speed  2s
    title should be     Welcome: Mercury Tours
    Log To Console      ${page_title}



    # This is a input text events 
    Input Text  name:userName   mercury
    Sleep       1
    Input Text  name:password   mercury  
    Sleep       1
    

    # This is a close browser field
    Sleep       3
    close browser
