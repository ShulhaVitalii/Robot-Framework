*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/login_nopcon.robot

Suite Setup    Open my browser
Suite Teardown    Close Browsers
Test Template    Invalid login

*** Test Cases ***    username    password
Correct user empty password    admin@yourstore.com    ${EMPTY}
Correct user wrong password    admin@yourstore.com    bgbgbg
Wrong user correct password    admin@yours    admin
Wrong user empty password    admin    ${EMPTY}
Wrong user wrong password    admin@yours    ggg

*** Keywords ***
Invalid login
    [Arguments]    ${username}    ${password}
    Wait until login page loaded
    Input username    ${username}
    Input passw    ${password}
    click login button
    Error message should be visible
