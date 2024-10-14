*** Keywords ***
Input register email
    [Arguments]    ${email}    
    common.Input text when ready        ${register_locator.username_container}     ${email}

Input register password
    [Arguments]    ${password}    
    common.Input text when ready        ${register_locator.password_container}    ${password}

Input confirm password
    [Arguments]    ${cf_password}    
    common.Input text when ready        ${register_locator.confirm_password_container}    ${cf_password}

Click submit button
    common.Click when ready             ${register_locator.submit_btn}