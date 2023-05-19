*** Settings ***
Library    SeleniumLibrary
#Library    String
Library    Collections

*** Variables ***
${URL}    https://www.countries-ofthe-world.com/flags-of-the-world.html
${browser}    chrome

*** Test Cases ***
GetAllLinksTest
    set selenium implicit wait    5
    open browser    ${URL}    ${browser}
    maximize browser window

    ${links_count}=    get element count    //a
    log to console    ${links_count}

    @{link_items}    create list

    FOR    ${i}    IN RANGE    1    ${links_count}+1
        ${link_text}=    get text    (//a)[${i}]
        Append To List    ${link_items}    ${link_text}
    END
    log many    @{link_items}

