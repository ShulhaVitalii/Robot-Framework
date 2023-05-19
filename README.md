# Robot-Framework
Robot-Framework learning. Examples of the tests

https://www.youtube.com/watch?v=srH9wZZOL_M&list=PLUDwpEzHYYLsCHiiihnwl3L0xPspL7BPG&index=3

http://robotframework.org/robotframework/latest/RobotFrameworkUserGuide.html#using-variables

http://robotframework.org/SeleniumLibrary/SeleniumLibrary.html#Click%20Button

https://testersdock.com/first-test-robot-framework/



Robotfremeworck structure
----------
*** Settings ***
Documentation    Suite description
Library    SeleniumLibrary

#Suite Setup    Log    This is open browser Test
#Suite Teardown    Log    This is close browser Test

Test Setup    Open Browser  ${URL}  ${Browser}
Task Teardown     Close Browser

*** Variables ***
${Browser}  Chrome  #executable_path="C:/Users/Admin/Desktop/RobotOne/Drivers/chromedriver.exe"
${URL}  https://opensource-demo.orangehrmLive.com/
@{Credentials}  Admin  admin123
&{loginData}  username=Admin  password=admin123

*** Test Cases ***
TC_000_LoginTest
#    Open Browser  ${URL}  ${Browser}
    Maximize Browser Window
    Wait Until Page Contains Element  //button[@type="submit"]
    #Input Text  //input[@name='username']  ${Credentials}[0]
    #Input Text  //input[@name="password"]  ${loginData.password}#[password]
    #Click Element  //button[@type="submit"]
    Do login
#    Close Browser
    log  This test is ran by %{username} on %{os}

TC_001
    [Tags]    sanity
    Log    This is 001 test

TC_002
    [Tags]    sanity
    Log    This is 002 test

TC_003
    [Tags]    regresion
    Log    This is 003 test

TC_004
    [Tags]    regresion
    Log    This is 004 test

*** Keywords ***
Do login
  Input Text  //input[@name='username']  ${Credentials}[0]
  Input Text  //input[@name="password"]  ${loginData.password}#[password]
  Click Element  //button[@type="submit"]


For run tests:
	robot first_tests.robot
	robot --include=sanity first_tests.robot
	robot -i sanity -i regresion first_tests.robot (include)
	robot -e sanity first_tests.robot (exclude)
	robot -i sanity -e regresion first_tests.robot (include)



executable_path="C:/chromedriver/chromedriver.exe"

C:\Users\Admin\AppData\Local\Programs\Python\Python39\Scripts

Variables
-----------------
http://robotframework.org/robotframework/latest/RobotFrameworkUserGuide.html#using-variables

SCALAR
	${VAR_NAME}  Value
LIST
	@{var_name}  value1 value2  ....
DICTIONARY
	&{var_name}  key=value  key=value
ENVIRONMENT
	%{}

BUILT-IN
	2.6.4   Built-in variables


Keywords 
--------------
To made user keywords for reuse


Setup & Teardowns 
--------------
#Suite Setup    Log    This is open browser Test
#Suite Teardown    Log    This is close browser Test

Test Setup    Open Browser  ${URL}  ${Browser}
Task Teardown     Close Browser


Tags
-------------



requirements
-----------
robotframework
robotframework-seleniumlibrary
requests
robotframework-requests

robotframework-datadriver

