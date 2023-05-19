*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/resources.robot

*** Variables ***
${URL}    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
${browser}    chrome

*** Test Cases ***
TC1
    ${page_title}=    launchBrowser    ${URL}    ${browser}
    log to console    ${page_title}
    log    ${page_title}    # Log value to report

    input text    //input[@name='username']  Admin
    input text    //input[@name="password"]    admin123
    close browser

#*** Keywords ***    # Moved to resources file
#launchBrowser
#    [Arguments]    ${appurl}    ${appbrowser}
#    open browser    ${appurl}    ${appbrowser}
#    set selenium implicit wait    5
#    maximize browser window
#    ${title}=    get title
#    [Return]    ${title}
