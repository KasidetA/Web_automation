*** Keywords ***
Input product name
    [Arguments]    ${product}
    common.Input text when ready          ${home_locator.input_txt}     ${product}
    
Click search button
    common.Click when ready               ${home_locator.search_btn}