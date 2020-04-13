*** Settings ***
# only one time in the begin
Suite Setup         Log to console      Opening Browser
# only one time in the end
Suite Teardown      Log to console      Closing Browser

# Executed every time before test case (every time)
Test Setup          log to console      login to application
# executed every time after test case (every time)
Test Teardown       Log to console     logout from application

Documentation  Simple example using SeleniumLibrary
Library  Selenium2Library
Library     OperatingSystem

*** Variables ***




*** Test Cases ***

TC1 prepaid recharge
    log to console      This is prepaid recharge


TC2 postpaid recharge
    log to console      this is postpaid recharge


TC3 Search
    log to console      this is search test Cases

TC4 advanced search

    Log To console      this is a search adv case




*** Keywords ***


    

