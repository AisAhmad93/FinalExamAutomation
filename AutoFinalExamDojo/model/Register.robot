*** Settings ***
Documentation   Register test cases
Library         SeleniumLibrary
Resource        ../pageObjects/register.robot

*** Test Cases ***
the user is on the register form
     [Documentation]         Test Register
     [Setup]                 Open Browser Chrome

     user click button signin
     user input email
     user click create account
     user check radio button MR
     user input label firstname
     user input label lastname
     user validasi email
     user input password
     input date of birth
     Click Cekbox Newsletter
     input firstname lastname for address
     user input company,address,address2,city,state
     user input post code dll
    User Click Button Register

     [Teardown]             Close Browser