*** Settings ***
Documentation  Simple example using SeleniumLibrary
Library  Selenium2Library
Library     OperatingSystem



*** Variables ***
${browser}  Firefox
${URL}  http://testautomationpractice.blogspot.com/




*** Test Cases ***

Open and Get Title
    ${ff default caps}    Evaluate    sys.modules['selenium.webdriver'].common.desired_capabilities.DesiredCapabilities.FIREFOX    sys,selenium.webdriver
    Create Webdriver    ${browser}    executable_path=/home/elsys/PycharmProjects/robot_framework/TestCase/geckodriver
    Go To    ${URL}
    optionbrowser_application


Text, Testing Radio buttons, check boxes
    testingradioapplication



check Bookname

    checktableheaderBook_applciation

Check Author

    checktableheaderAuthor_application


close browser Now
    closebrowser_application



*** Keywords ***

optionbrowser_application
    maximize browser window
    set selenium speed  0.5s
    ${page_tile}    Get Title
    Log   ${page_tile}
    #Title Should Be     Welcome: Mercury Tours


testingradio_application
    Sleep   5
    ${Elementstable}    Get Element Count   xpath://table[@name='BookTable']/tbody/tr
    # This is the way to print into console
    

    ${clos}         Get Element Count       xpath://table[@name='BookTable']/tbody/tr[1]/th

    ${gettablevalue}    Get Text            xpath://table[@name='BookTable']/tbody/tr[5]/td[1]

    Table Column Should Contain     xpath://table[@name='BookTable']  2   Author
    Table Row Should Contain        xpath://table[@name='BookTable']  4   Learn JS
    Table Cell Should Contain       xpath://table[@name='BookTable']  5   2     Mukesh
              
    Log To Console      Table size count: ${Elementstable}
    Log To Console      number of collums: ${clos}
    Log To Console      value inside the colum is: ${gettablevalue}
    Log                 ${gettablevalue}


checktableheaderBook_applciation
    Table header should contain     xpath://table[@name='BookTable']        BookName
    
checktableheaderAuthor_application    
    Table header should contain     xpath://table[@name='BookTable']        Author




closebrowser_application
    Sleep   4S
    close browser