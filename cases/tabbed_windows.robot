*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
TabbedWindowsTest
    set selenium implicit wait    5

    open browser   https://demo.automationtesting.in/Windows.html    chrome
    maximize browser window

    click button    click

    switch window    Selenium
    click element    //span[text()="Downloads"]
    ${url}  get location
    should contain    ${url}    downloads
    close all browsers
    
