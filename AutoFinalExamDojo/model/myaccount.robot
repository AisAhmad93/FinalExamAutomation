*** Settings ***
Documentation   verify my account
Library         SeleniumLibrary
Resource        ../pageObjects/myaccount.robot

*** Test Cases ***
the user is in the login form
    [Documentation]         Test verify my account
    [Setup]                 Open Browser Chrome
    user click button signin
    Sign in with your registered email
    Sign in with your registered password
    Click button signin
    verify account in navbar
    [Teardown]             Close Browser