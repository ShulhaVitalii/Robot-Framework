*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
FramesTest
    set selenium implicit wait    5

    open browser    https://www.selenium.dev/selenium/docs/api/java/index.html?overview-summary.html    chrome
    maximize browser window

    select frame    packageListFrame
    click link    org.openqa.selenium
    unselect frame

    select frame    packageFrame
    click link    WebDriver
    unselect frame

    select frame    classFrame
    click element    //a[text()="Help"]
    unselect frame

    close browser
