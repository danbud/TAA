*** Settings ***
Resource    keyword.resource
Resource    locators.resource
Resource    variables.resource
Test Setup    Test Setup
#Test Teardown    Close Browser

*** Test Cases ***
First Item
    Click Element    ${search_box}
    Input Text    ${search_box}    lego
    Click Element    ${search_button}
    Scroll Element Into View    ${top_rated}
    Click Link    ${top_rated}
