*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    https://opensource-demo.orangehrmLive.com/

*** Test Cases ***
LoginTC
    set selenium implicit wait    5

    open browser    ${URL}    chrome
    maximize browser window
    input text    //input[@name='username']    Admin
    input text    //input[@name="password"]    admin123

#    capture element screenshot    //img[@alt="company-branding"]    C:/Users/Admin/Desktop/RobotOne/Logo.png
#    capture page screenshot    C:/Users/Admin/Desktop/RobotOne/LoginTC.png
#   the same below
    capture element screenshot    //img[@alt="company-branding"]    Logo.png
    capture page screenshot    LoginTC.png

    close browser
