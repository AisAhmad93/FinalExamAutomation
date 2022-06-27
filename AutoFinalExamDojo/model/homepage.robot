*** Settings ***
Documentation   Homepage test cases
Library         SeleniumLibrary
Resource        ../pageObjects/homepage.robot

*** Test Cases ***
user Should Be Able To See Homepage
    [Documentation]         Test Homepage
    [Setup]                 Open Browser Chrome

    Verify Current Url Is Homepage Url
    Verify Homepage Title Appears
    verify keyword appears in search    

    [Teardown]              Close Browser