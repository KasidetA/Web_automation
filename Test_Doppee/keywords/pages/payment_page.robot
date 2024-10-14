*** Keywords ***
Select payment method
    common.Click when ready    ${payment_locator.next_btn}

Fill card number in credit card details
    [Arguments]    ${creditcard}    
    common.Input text when ready      ${payment_locator.card_number_container}    ${creditcard}

Fill expire date in credit card details    
    [Arguments]    ${exp}    
    common.Input text when ready      ${payment_locator.exp_container}    ${exp}

Fill cvc in credit card details 
    [Arguments]    ${cvc}
    common.Input text when ready      ${payment_locator.cvc_container}    ${cvc}

Fill card holder name in credit card details 
    [Arguments]    ${name}    
    common.Input text when ready      ${payment_locator.holder_name_container}    ${name} 

Click confirm payment
    common.Click when ready           ${payment_locator.confirm_payment_btn}