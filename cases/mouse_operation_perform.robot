*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    https://swisnl.github.io/jQuery-contextMenu/demo.html

*** Test Cases ***
MouseActions
    set selenium implicit wait    5

    open browser    ${URL}    chrome
    maximize browser window
    # Right click action
    open context menu    //span[text()="right click me"]
    element should be visible    //ul[@class="context-menu-list context-menu-root"]

    # Double click action
    go to    https://testautomationpractice.blogspot.com/
    double click element    //button[text()="Copy Text"]

    # Drag and Drop
    go to    http://www.dhtmlgoodies.com/scripts/drag-drop-custom/demo-drag-drop-3.html
    drag and drop    //div[text()="Rome" and @id="box6"]    //div[text()="Italy"]
    element should be visible    //div[text()="Italy"]/div[text()="Rome"]
    close browser
