*** Settings ***
Library    SeleniumLibrary
Variables    ../page_objects/locators.py


*** Keywords ***
Open my browser
    [Arguments]    ${url}    ${browser}
    open browser    ${url}    ${browser}
    maximize browser window
    set browser implicit wait    5

Close Browsers
    close all browsers

Input username
    [Arguments]    ${username}
    input text    ${input_username}    ${username}
Input passw
    [Arguments]    ${password}
    input text    ${input_password}    ${password}

Click login button
    click element    ${submit_button}

Click logout link
    click element    ${user_dropdown_menu}
    click link    Logout

Should be login page
    page should contain    Login

Error message should be visible
    wait until page contains element    //*[text()="Invalid credentials"]
    page should contain    Invalid credentials

Dashboard page should be visible
    page should contain    Dashboard
