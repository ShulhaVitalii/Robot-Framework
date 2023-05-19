*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
NavigationTest
    set selenium implicit wait    5

    open browser    https://www.google.com/    chrome
    ${loc}=    get location
    log to console    ${loc}

    go to    https://www.bing.com/
    ${loc}=    get location
    log to console    ${loc}

    go back
    ${loc}=    get location
    log to console    ${loc}

    close browser
