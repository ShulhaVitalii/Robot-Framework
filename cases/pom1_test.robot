*** Settings ***
Library    SeleniumLibrary
Resource    ../resources/ligin_keywords.robot


*** Variables ***
${LOGIN_URL}    https://opensource-demo.orangehrmLive.com/
${BROWSER}  headlesschrome
${user}    Admin
${password}    admin123

*** Test Cases ***
LoginTest
    Open my browser    ${LOGIN_URL}    ${BROWSER}
    Input username    ${user}
    Input passw    ${password}
    Click login button
    Dashboard page should be visible
    Click logout link
    Should be login page
    Close Browsers

