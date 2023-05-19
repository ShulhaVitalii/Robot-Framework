*** Settings ***
Library    SeleniumLibrary


*** Keywords ***
launchBrowser
    [Arguments]    ${appurl}    ${appbrowser}
    open browser    ${appurl}    ${appbrowser}
    set selenium implicit wait    5
    maximize browser window
    ${title}=    get title
    [Return]    ${title}
