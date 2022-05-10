*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Custom Keyword 1
    Log    Custom Keyword


#312 lego
Test Setup
    Open Browser    https://www.alza.sk/EN/    gc
    Set Window Size    1800    1000
    Accept Cookies

Accept cookies
    Click Link    //*[@id="rootHtml"]/body/div[6]/div/div/div[2]/a[1]


# tomuto vobec nerozmiem, co by to malo robit
Write Down Text
    ${InputText}    ${WriteDownText}

# Google
Setup Keyword
    Open Browser    https://www.google.com     gc
    Maximize Browser Window
    Wait Until Page Contains Element    //*[@id="L2AGLb"]/div
    Click Element    //*[@id="L2AGLb"]/div


# tu sme sa bavili presne o tom, ze ak ma KW robit len 1 vec, netreba na to kw...
# staci skovat  xpath   do premennej, a bude to zrejme
Click Search
    Click Element    xpath=/html/body/div[1]/div[3]/form/div[1]/div[1]/div[3]/center/input[1]
#    Click Element    (//input[@class='gNO89b'])[2] | (//input[@class='gNO89b'])[1]



