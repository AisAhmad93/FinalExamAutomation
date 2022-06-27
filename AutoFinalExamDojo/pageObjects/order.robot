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
user searches for blouses in the search feature
    Input Text              ${Search}       Blouses
    Click Element           ${Button_search}
user add to cart
    Click Element           ${Add_cart}
    Wait Until Element Is Visible       //div[@id="layer_cart"]
    Click Element                        ${Checkout}
    Element Should Be Visible               //div[@id="center_column"]
    Click Element               //a[@class="button btn btn-default standard-checkout button-medium"]
    

