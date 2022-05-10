*** Settings ***
Library    SeleniumLibrary
Library    XML
Resource    keyword.resource
Resource    variables.resource
Resource    locators.resource
Test Setup    Open Browser    https://www.alza.sk/EN/    gc
#Test Teardown    Close Browser

*** Test Cases ***
Test 311
    Set Window Size    1850    1000
    Wait Until Page Contains Element    ${cookie}
    Click Element    ${cookie}
    Click Element    //[@id="litp18890188"]/a
    Click Element    //[@id="left"]/div[2]/div[1]/a[1]
    Click Element    //[@id="leftParametrizationContainer"]/div/div[2]/div[1]/a[2]
    Click Element    //[@id="leftParametrizationContainer"]/div/div[2]/div[1]/a[7]
    Click Element    //[@id="ui-id-3"]
    Click Element    //[@id="boxes"]/div[3]/div[1]/div[2]/a
    Click Element    //*[@id="cpcm_cpc_tdAmount"]/span/div[1]/div/a
    Page Should Contain    Product Added to Cart.
    ${pricenb}    Get Text    xpath=//*[@id="price"]
    Should Be Equal As Strings    ${pricenb}    449 €





