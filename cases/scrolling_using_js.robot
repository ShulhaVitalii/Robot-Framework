*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    https://www.countries-ofthe-world.com/flags-of-the-world.html
${browser}    chrome

*** Test Cases ***
Scrolling
    set selenium implicit wait    5
    open browser    ${URL}    ${browser}

    execute javascript    window.scrollTo(0,1500)
    sleep    1

    scroll element into view    //td[text()="Luxembourg"]
    sleep    1
    # Scroll to the end of the page
    execute javascript    window.scrollTo(0,document.body.scrollHeight)
    sleep    1
    # Scroll to the start of the page
    execute javascript    window.scrollTo(0,-document.body.scrollHeight)
    sleep    1
    close browser

