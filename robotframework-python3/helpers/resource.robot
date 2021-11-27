*** Settings ***
Documentation     A resource file with reusable keywords and variables.
...
...               The system specific keywords created here form our own
...               domain specific language. They utilize keywords provided
...               by the imported SeleniumLibrary.

Library     SeleniumLibrary


*** Variables ***
${SERVER}         robotframework.org
${BROWSER}        Chrome
${DELAY}          0.3
${VALID USER}     demo
${VALID PASSWORD}    mode
${WELCOME URL}    https://${SERVER}/
${ERROR URL}      https://${SERVER}/error.html

*** Keywords ***

Open Browser To Welcome Page
    Open Browser    ${WELCOME URL}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed    ${DELAY}
    #Login Page Should Be Open

Welcome Page Should Be Open
    Location Should Be    ${WELCOME URL}
    Title Should Be    Welcome Page

Close Browser
    Terminate all processes
    Close all browsers


