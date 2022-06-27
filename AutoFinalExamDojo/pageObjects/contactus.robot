*** Settings ***
Documentation       Homepage Related keyword
Variables           locators.yaml

*** Keywords ***
Open Browser Chrome
    Open Browser        browser=${Browser}  url=${Homepage_url}
the user is in the login form
    [Documentation]     user login 
    Location Should Be  ${Homepage_url} 
    Maximize Browser Window
user click button signin
    Click Element           //*[@class="login"]
Sign in with your registered email  
    Input Text              ${Login_email}      aisahmad200@gmail.com
Sign in with your registered password
    Input Text              ${Pass_email}       Ais123
Click button signin
    Click Element           ${Signin}   
Verify Homepage Title Appears
    Element Should Be Visible   ${Home}
    Wait Until Location Is      http://automationpractice.com/index.php?controller=my-account
Click Contact Us
    Click Element               //div[@id="contact-link"]
    Click Element               //i[@class="icon-building"]

