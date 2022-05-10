*** Settings ***
Library     SeleniumLibrary
Resource    keyword.resource
Resource    variables.resource
Resource    locators.resource
Test Setup      Setup Keyword
#Test Teardown       Close Browser

*** Test Cases ***


# k comu su tagy, ked je kazdy unikatny?
# Test Google 1
#   nerobi nic  a zaroven ak odkomentujes teardown, tak padne teardown

# Test Google 2
#   opakujes v testoch ten isty 'search' nikolko krat
#   keyword by mal byt nieco ako  'Search For   Apple'  (alebo samozrejme lubovolny iny nazov)
#      v jeho implementacii by mali byt   aj Input, aj wait, aj click search
#      TC By potom vyzeral :
#   Search For    Apple
#   Wait Until Page Contains    Discover the innovative world
#   -----


# Press Keyws    None    ENTER
#   je lepsie robit press keys nad konkretnym elementom, ak tam nedas,
#   odpali sa enter 'len tak' a teoreticky moze aktivovat nieco co nechces

Test Google 1
    [Tags]      Test1
    Close Browser


Test Google 2
    [Tags]    Test2
    Input Text    ${search_googlebox}    Apple
    Wait Until Page Contains Element    ${search_google}
    Click Search
    Wait Until Page Contains    Discover the innovative world

Test Google 3
    [Tags]      Test3
    Input Text    ${search_googlebox}    what is an Apple
    Click Search
    Wait Until Page Contains    the tree bearing apples

Test Google 4
    [Tags]      Test4
    Input Text    ${search_googlebox}    what is an Apple
    Press Keys    None    ENTER
    Wait Until Page Contains    the tree bearing apples

Test Google 5
    [Tags]    Test5
    Input Text    ${search_googlebox}    Johny Johny yes papa, eating sugar no papa, telling lies no papa, open your mouth hahaha
    Press Keys    None    ENTER
#    Wait Until Page Contains Element    locator

Test Google 6
    [Tags]    Test6
    Input Text    ${search_googlebox}    @#$%ndjehbwid^’
    Press Keys    None    ENTER
    Wait Until Page Contains    Make sure that all words are spelled correctly
    Wait Until Page Contains    Try different keywords.
    Wait Until Page Contains    Try more general keywords.

 Test Google 7
    [Tags]    Test7
    Input Text    ${search_googlebox}    Johny Johny yes papa, eating sugar no papa, telling lies no papa, open your mouth hahaha
    Press Keys    None    ENTER
    Wait Until Page Contains Element    ${yes_papa}

Test Google 8
    [Tags]    Test8
    Click Element    ${mic}
    Wait Until Page Contains    Allow
    Alert Should Be Present
#    ${message}=    Handle Alert
    Sleep    3 sec
    Press Keys    none    ENTER
    # not working, I am lost

Test Google 9

Test Google 10

Test Google 12
    [Tags]    Test12
    Input Text    ${search_googlebox}    what is an Apple
    Press Keys    none    ENTER
    Clear Element Text    ${search_googlebox}
    Input Text    ${search_googlebox}    where is a statue of Liberty located
    Press Keys    none    ENTER
    Clear Element Text    ${search_googlebox}
    Input Text    ${search_googlebox}    what is current weather
    Press Keys    none    ENTER

Test Google 13
    [Tags]    Test13
    Click Link    ${google_offered_in}

Test Google 14
    [Tags]    Test14
    Page Should Contain Element   ${country}
    
Test Google 15
    [Tags]    Test15
    Click Element    ${lucky}








Test Google 17
    [Tags]    Test17
    Click Element    xpath=//a[@aria-label="Google apps"]
    Select Frame    xpath=//iframe
    Click Element    xpath=//span[text()='Play']
    
    
