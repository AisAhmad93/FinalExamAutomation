*** Settings ***
Documentation   login test case
Library         SeleniumLibrary
Resource        ../pageObjects/contactus.robot

*** Test Cases ***
the user is in the login form
    [Documentation]         Test Login
    [Setup]                 Open Browser Chrome
    user click button signin
    Sign in with your registered email
    Sign in with your registered password
    Click button signin
    Click Contact Us
    [Teardown]             Close Browser