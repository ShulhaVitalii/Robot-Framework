*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
HandlingAllerts
    set selenium implicit wait    5

    open browser    https://testautomationpractice.blogspot.com/    chrome
    maximize browser window
    click element    //button[text()="Click Me"]    # open allerts
#    alert should be present    Press a button!
    handle alert    accept
    page should contain    You pressed OK!


    click element    //button[text()="Click Me"]    # open allerts
#    alert should not be present    Prss a buton!
    handle alert    dismiss
    page should contain    You pressed Cancel!




