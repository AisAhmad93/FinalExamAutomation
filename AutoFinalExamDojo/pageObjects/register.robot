*** Settings ***
Documentation       Homepage Related keyword
Variables           locators.yaml

*** Keywords ***
Open Browser Chrome
    Open Browser        browser=${Browser}  url=${Homepage_url}
the user is on the register form
    [Documentation]     the user is on the register form
    Location Should Be  ${Homepage_url}     
user click button signin
    Click Element           //*[@class="login"]
user input email
    Input Text              //input[@id="email_create"]         aisahmad200@gmail.com
user click create account
    Click Element         //*[@class="icon-user left"]
    Sleep                   2s
user check radio button MR
    Wait Until Location Is   http://automationpractice.com/index.php?controller=authentication&back=my-account#account-creation
    Click Element                   ${Mr}
user input label firstname
    Input Text                      ${1name}    ais
user input label lastname
    Input Text                      ${2name}    ahmad
user validasi email
    Element Should Be Visible       //*[@class="required form-group form-ok"]
user input password
    Input Text                      ${pass}     Ais123
input date of birth
    Select From List By Value                   ${date}         22
    Select From List By Value                   ${month}        12
    Select From List By Value                   ${year}         1998
Click Cekbox Newsletter
    Click Element                       //label[@for="newsletter"]
input firstname lastname for address
    Input Text                       ${Firstname}    wilso
    Input Text                       ${Lastname}     Pasaribu
user input company,address,address2,city,state
    Input Text                       ${Company}      Tokopedia
    Input Text                       ${Address}      jalan Raya Ragunan
    Input Text                       ${Address2}     Jalan Kebagusan
    Input Text                       ${City}         Jakarta Selatan
    Select From List By Value        ${State}        22
user input post code dll
    Input Text                          ${Post_code}    12540
    Select From List By Value           ${Country}      21
    Input Text                          ${Additional_information}   Dibelakang sumur
    Input Text                          ${Home_phone}       02112019332
    Input Text                          ${Mobile_phone}     08986250074
    Input Text                          ${Alias}            Jalan Jeruk Nipis
    Sleep                                   5s
User Click Button Register
    Click Element                       ${Register_submit}
