*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${LOGIN_URL}    https://opensource-demo.orangehrmLive.com/    #https://admin-demo.nopcommerce.com/
${BROWSER}  chrome

*** Keywords ***
Open my browser
    open browser    ${LOGIN_URL}    ${BROWSER}
    maximize browser window

Close Browsers
    close all browsers

Open Login Page
    go to    ${LOGIN_URL}

Wait until login page loaded
    wait until element is visible    //button[@type="submit"]

Input username
    [Arguments]    ${username}
    input text    //input[@name='username']    ${username}
Input passw
    [Arguments]    ${password}
    input text    //input[@name="password"]    ${password}

click login button
    click element    //button[@type="submit"]

click logout link
    click link    Logout

Error message should be visible
    wait until page contains element    //*[text()="Invalid credentials"]
    page should contain    Invalid credentials

Dashboard page should be visible
    page should contain    Dashboard
