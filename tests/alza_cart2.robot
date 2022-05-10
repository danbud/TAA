*** Settings ***
Resource    keyword.resource
Resource    variables.resource
Resource    locators.resource
Library    SeleniumLibrary

*** Test Cases ***
Only Log Variable
    Open Browser    https://www.alza.sk/EN/    browser=gc
    Set Window Size    1920   1040
    Click Element    xpath=//*[@id="rootHtml"]/body/div[6]/div/div/div[2]/a[1]
    Click Element    id=litp18890188
    Click Element    xpath=//*[@id="ltp"]/div[2]/div/div[1]/a[2]
    Click Element    xpath=//*[@id="content0"]/div[1]/div[2]/div[3]/div/div[1]/a[3]
    Wait Until Element Is Visible    xpath=//*[@id="content0"]/div[1]/div[2]/div[3]/div/div[1]/a[8]/span

    Wait Until Element Is Visible    xpath=//*[@id="content0"]/div[1]/div[2]/div[3]/div/div[1]/a[8]/span
    Click Element    xpath=//*[@id="content0"]/div[1]/div[2]/div[3]/div/div[1]/a[8]/span

    Wait Until Element Is Visible    xpath=//*[@id="ui-id-3"]
    Click Element    xpath=//*[@id="ui-id-3"]
    Sleep    5 sec
    #Scroll Element Into View    xpath=/html/body/div[2]/div/div/div[3]/div[4]/div[2]/div[1]/div[2]/div[4]/div[5]/div[2]/div/div[3]/div[1]/div[1]/a/em/img
    Click Element    xpath=//*[@id="boxes"]/div[3]/div[1]/div[2]/a
    Click Element    xpath=//*[@id="cpcm_cpc_tdAmount"]/span/div[1]/div/a/span[2]

    Page Should Contain    Product Added to Cart.
    ${number_of_cart_items}    Get Text    xpath=//*[@id="basketLink"]/span[2]
    Should Be Equal As Strings    ${number_of_cart_items}    1


    ${price_of_ntb}    Get Text    xpath=//*[@id="price"]
    Should Be Equal As Strings    ${price_of_ntb}    449 €

    Click Element    id=varBToBasketButton

    ${location}    Get Location
    Should Be Equal As Strings    ${location}    https://www.alza.sk/EN/Order1.htm

    Click Element    id=blockBtnRight

    Sleep    2 sec
    Click Element    xpath=//*[@id="alzaDialog"]/div[3]/div[2]/span[1]

    Sleep    1 sec
    ${location_2}    Get Location
    Should Be Equal As Strings    ${location_2}    https://www.alza.sk/Order2.htm

    #Wait Until Element Is Visible    xpath=//*[@id="deliveryContainer-684-130156986"]/div[1]/div[1]
    Click Element    xpath=/html/body/div[2]/div/div/div[3]/div[4]/div/div[2]/div[1]/div[2]/div[1]/div/div/div/div[3]
    Sleep    1 sec
    Click Element    xpath=/html/body/div[17]/div[3]/div/div/div/div[1]/div[2]/div[2]/div/button[1]
    Sleep    2 sec
    Click Element    xpath=//html/body/div[17]/div[3]/div/div/div/div[1]/div[2]/div[2]/div/div/div/div[3]/div[3]/button[2]/span[1]

    Sleep    2 sec
    Click Element    xpath=//*[@id="personalCentralDialog"]/div[2]/a[2]
    Sleep    5 sec
    Click Element    xpath=//*[@id="paymentContainer-216"]
    Click Element    id=confirmOrder2Button

    ${location_3}    Get Location
    Should Be Equal As Strings    ${location_3}    https://www.alza.sk/Order3.htm