*** Settings ***
Resource    keyword.resource
Resource    variables.resource
Resource    locators.resource
Library    SeleniumLibrary
#Test Teardown    Close Browser

*** Test Cases ***
Only Log Variable
    Open Browser    https://www.alza.sk/EN/    browser=gc
    Set Window Size    1920   1040
    Click Element    xpath=//*[@id="rootHtml"]/body/div[6]/div/div/div[2]/a[1]
    Click Element    id=litp18890188
    Click Element    xpath=//*[@id="ltp"]/div[2]/div/div[1]/a[2]
    Click Element    xpath=//*[@id="content0"]/div[1]/div[2]/div[3]/div/div[1]/a[3]
    Wait Until Element Is Visible    xpath=//*[@id="content0"]/div[1]/div[2]/div[3]/div/div[1]/a[8]/span
#    Click Element    id=vendor-close
    Click Element    xpath=//*[@id="content0"]/div[1]/div[2]/div[3]/div/div[1]/a[8]/span
    Click Element    xpath=//*[@id="ui-id-3"]
    Sleep    5 sec
    #Scroll Element Into View    xpath=/html/body/div[2]/div/div/div[3]/div[4]/div[2]/div[1]/div[2]/div[4]/div[5]/div[2]/div/div[3]/div[1]/div[1]/a/em/img
    Click Element    xpath=//*[@id="boxes"]/div[3]/div[1]/div[2]/a
    Click Element    xpath=//*[@id="cpcm_cpc_tdAmount"]/span/div[1]/div/a/span[2]
    
    Page Should Contain    Product Added to Cart.
    ${number_of_cart_items}    Get Text    xpath=//*[@id="basketLink"]/span[2]
    Should Be Equal As Strings    ${number_of_cart_items}    1
    ${price}    Get Text    xpath=//*[@id="price"]
    Should Be Equal As Strings    ${price}    449 €
    Click Element    id=varBToBasketButton
    ${location}    Get Location
    Should Be Equal As Strings    ${location}    https://www.alza.sk/EN/Order1.htm
    Scroll Element Into View    xpath=//*[@id="blockBtnRight"]/a/span[1]
    Sleep    5 sec
    Click Element    xpath=//*[@id="blockBtnRight"]/a/span[1]
    Sleep    2 sec
    Click Element    xpath=//*[@id="alzaDialog"]/div[3]/div[2]/span[1]
    Sleep    2 sec
    Click Element    xpath=/html/body/div[2]/div/div/div[3]/div[4]/div/div[2]/div[1]/div[2]/div[1]/div/div/div/div[2]
    Sleep    2 sec
    Scroll Element Into View    xpath=//*[@id="rootHtml"]/body/div[17]/div[3]/div/div/div/div[1]/div[2]/div[2]/div/button[7]
    Sleep    2 sec
#    Click Element    id=salesNetwork-place-684
#    Click Button    xpath=//*[@id="rootHtml"]/body/div[17]/div[3]/div/div/div/div[1]/div[2]/div[2]/div/button[7]
#    Scroll Element Into View    value=Alza Bratislava - main shop
    Click Element    xpath=//*[@data-testid="salesNetwork-place-684"]







    