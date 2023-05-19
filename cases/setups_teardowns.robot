*** Settings ***
Documentation    Setups and teardowns
Library    SeleniumLibrary

Suite Setup    log to console    Opening browser
Suite Teardown    log to console    Closing browser

Test Setup    log to console    Login to app
Task Teardown     log to console    logout

*** Test Cases ***
TC_001
    [Tags]    base
    log to console    This is 001 test

TC_002
    [Tags]    base
    log to console    This is 002 test

TC_003
    [Tags]    regresion
    log to console    This is 003 test

TC_004
    [Tags]    regresion
    log to console    This is 004 test
