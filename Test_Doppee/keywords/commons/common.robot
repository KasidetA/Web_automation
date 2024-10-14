*** Keywords ***
Open website
    [Arguments]    ${link_url}
    ${chrome_options}=    BuiltIn.Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    Call Method    ${chrome_options}    add_argument    --start-maximized
    Call Method    ${chrome_options}    add_argument    --no-sandbox
    # Call Method    ${chrome_options}    add_argument    --headless
    Call Method    ${chrome_options}    add_argument    --window-size\=1920,1080
    Call Method    ${chrome_options}    add_argument    --disable-dev-shm-usage
    Open Browser    ${link_url}   ${ui_setting['browser']}    options=${chrome_options}
 
Click user icon
    common.Click when ready       ${common_locator.user_icon}

Click when ready
    [Arguments]         ${element_path}
    SeleniumLibrary.wait until element is visible       ${element_path}     ${waiting_time}
    SeleniumLibrary.click element                       ${element_path}
    
Close popup
    common.Click when ready              ${popup_locator.ok_btn}

Input text when ready
    SeleniumLibrary.wait until element is visible       ${element_path}     ${waiting_time}
    SeleniumLibrary.input text                          ${element_path}     ${input_text}

Generate random number
    ${random_number}    DateTime.Get current date    result_format=%H%M%S
    RETURN     ${random_number}

Generate new email
    [Arguments]    ${email}
    ${parts}            String.Split string         ${email}    @
    ${mail_part}        BuiltIn.Set variable        ${parts[0]}
    ${domain_part}      BuiltIn.Set variable        ${parts[1]}
    ${random_number}    common.Generate random number
    ${modified_email}   BuiltIn.Set variable        ${mail_part}${random_number}@${domain_part}
    Save modified email to YAML    ${modified_email}

Save modified email to YAML
    [Arguments]    ${modified_email}
    ${data}=    Create Dictionary    email=${modified_email}
    Write YAML file    ${CURDIR}/../../resources/testdata/generated_email.yaml    ${data}

Write YAML file
    [Arguments]    ${file_name}    ${data}
    ${yaml_str}=    Evaluate    __import__('yaml').dump(${data})
    Create File    ${file_name}    ${yaml_str}