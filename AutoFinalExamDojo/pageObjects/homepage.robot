*** Settings ***
Documentation       Homepage Related keyword
Variables           locators.yaml

*** Keywords ***
Open Browser Chrome
    Open Browser        browser=${Browser}  url=${Homepage_url}

Verify Current Url Is Homepage Url
    [Documentation]          Verify Current Url Is Homepage Url
    Location Should Be         ${Homepage_url}
Verify Homepage Title Appears
    Element Should Be Visible   ${footer_HP}
verify keyword appears in search
    Input Text              ${text}      Blouse
    Sleep                       2s


