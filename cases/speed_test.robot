*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
RegTest
    ${speed}=    get selenium speed
    log to console    ${speed}
    open browser    https://demowebshop.tricentis.com/register    chrome
    maximize browser window

    set selenium speed    0.25    # time betvin steps

    select radio button    Gender    M
    input text    name:FirstName    Vitalii
    input text    name:LastName    VitaliiLastName
    input text    name:Email    exaple@example.com
    input text    name:Password    password
    input text    id:ConfirmPassword    password

    ${speed}=    get selenium speed
    log to console    ${speed}
