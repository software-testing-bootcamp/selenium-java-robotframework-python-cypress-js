*** Settings ***
Documentation     A test suite with a single Gherkin style test.
...
...               Hello world
...               Hello world
Resource    ../helpers/resource.robot

#Test Teardown     Close Browser
Variables   ../helpers/config.py

Library     PageObjectLibrary
Library     SeleniumLibrary
Library     Process
Library     ../pages/HomePage.py
Library     ../pages/LoginPage.py

Suite Setup       Browser is opened to welcome page
Suite Teardown    Stop webapp and close all browsers

*** Keywords ***
Stop webapp and close all browsers
    Capture Page Screenshot
    Terminate all processes
    Close all browsers

Browser is opened to welcome page
    Set Screenshot Directory    screenshots
    Open browser to welcome page
    Capture Page Screenshot

*** Test Cases ***
Login as a human
     [Setup]  Go to page  HomePage
     Given user visits demo app
     When user logs in with credentials  Username    Password
     Then The current page should be    LoginPage


