*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    https://testautomationpractice.blogspot.com/
${browser}    chrome

*** Test Cases ***
TablesTest
    set selenium implicit wait    5
    open browser    ${URL}    ${browser}
    maximize browser window
    scroll element into view    //table[@name="BookTable"]

    ${rows}=    get element count    //table[@name="BookTable"]/tbody/tr
    ${columns}=    get element count    //table[@name="BookTable"]/tbody/tr[1]/th

    log to console    ${rows}
    log to console    ${columns}

    ${data}=    get text    //table[@name="BookTable"]/tbody/tr[5]/td[1]
    log to console    ${data}

    table column should contain    //table[@name="BookTable"]    2    Author
    table row should contain    //table[@name="BookTable"]    4    Learn JS
    table cell should contain    //table[@name="BookTable"]    5    2    Mukesh
    table header should contain    //table[@name="BookTable"]    BookName

    close browser
