*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
RegTest
    ${timeout}=    get selenium timeout
    log to console    ${timeout}

    open browser    https://demowebshop.tricentis.com/register    chrome
    maximize browser window
    set selenium timeout    10 seconds
    wait until page contains    Registration    # 5 seconds by default

    select radio button    Gender    M
    input text    name:FirstName    Vitalii
    input text    name:LastName    VitaliiLastName
    input text    name:Email    exaple@example.com
    input text    name:Password    password
    input text    id:ConfirmPassword    password
