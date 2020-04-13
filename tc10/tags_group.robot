*** Settings ***
Documentation  Simple example using SeleniumLibrary
Library     Selenium2Library
Library     OperatingSystem



*** Variables ***






*** Test Cases ***


TC1 user registrationtest
    [Tags]  regression
    log to console      this is user reg test
    log to console      user registration test is over

TC2 logintes
    [Tags]  sanity
    log to console   this i a testing now
    log to console   Login test is over


TC3 change user settings
    [Tags]  regression
    log to console     this is change user settongs
    log to console      change to user settings is over


tc4 logout test
    [Tags]  sanity
    log to console  this is logout test
    log to console  this is logout test is over






*** Keywords ***



#  robot --include=regression tags_group.robot
# we can exclud or including whatever you want