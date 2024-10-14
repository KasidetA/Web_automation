*** Settings ***
Resource    ${CURDIR}/../resources/setting/import.robot
Test Setup      common.Open website         ${url}
Test Teardown   SeleniumLibrary.Close Browser

*** Test Cases ***
Test Register 
    [Tags]      Register
    common.Generate new email       ${base_email}
    common.Click user icon
    log_in_page.Click sign up button
    register_page.Input register email      ${email}
    register_page.Input register password    ${user.password}
    register_page.Input confirm password    ${user.cf_password}
    register_page.Click Submit button
    common.Close popup

Test Log in
    [Tags]      Login
    common.Click user icon
    log_in_feature.Login    ${email}    ${user.password}
    home_page.Input product name    ${user.product}
    home_page.Click search button
    product_feature.add product to cart    ${product.product_name}
    cart_page.Open cart
    cart_feature.Fill in delivery info and start payment process    ${user.name}    ${user.surname}    
    ...    ${user.address}    ${user.phone}    ${email}
    payment_page.Select payment method 
    payment_feature.Fill in credit card details and confirm payment    ${user.creditcard}    ${user.exp}    
    ...    ${user.cvc}    ${user.name}
    common.Click user icon
    user_profile_page.Log out