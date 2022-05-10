*** Variables ***
${locator1}    xpath=//body

# 312
${search_box}    //*[@id="edtSearch"]
${search_button}    //*[@id="btnSearch"]
${top_rated}    //*[@id="ui-id-6"]


# Google
${search_googlebox}    //input[@role='combobox']
${search_google}    (//input[@class='gNO89b'])[2]
${yes_papa}    xpath=//span[@class="j0joJb"]
${mic}    xpath=//div[@aria-label="Search by voice"]
${google_offered_in}    xpath=//*[@id="SIvCob"]/a
${country}    xpath=//div[contains(text(),'Slovakia')]
${lucky}    xpath=/html/body/div[1]/div[3]/form/div[1]/div[1]/div[3]/center/input[2]
# ^    toto nieje uplne dobra forma xpathu ,je to len last resort , urcite nedporucujem to pouzivat
