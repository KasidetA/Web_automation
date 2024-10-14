*** Keywords ***
Fill in an email
    [Arguments]    ${email}
    common.Input text when ready          ${login_locator.email_container}    ${email}

Fill in password  
    [Arguments]    ${password}  
    common.Input text when ready          ${login_locator.password_container}    ${password}

Click login
    common.Click when ready               ${login_locator.log_in_btn} 

Click sign up button
    common.Click when ready               ${login_locator.sign_up_btn}