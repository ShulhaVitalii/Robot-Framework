*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
RegTest
    ${timeout}=    get selenium implicit wait
    log to console    ${timeout}

    open browser    https://demowebshop.tricentis.com/register    chrome
    maximize browser window

    set selenium implicit wait    10 seconds    # By default 0

    select radio button    Gender    M
    input text    name:FirstName    Vitalii
    input text    name:LastName    VitaliiLastName
    input text    name:Email    exaple@example.com
    input text    name:Password    password
    input text    id:ConfirmPassword    password

    ${timeout}=    get selenium implicit wait
    log to console    ${timeout}
    close browser
    
