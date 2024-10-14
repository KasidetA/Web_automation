*** Keywords***
Click add product to cart
    [Arguments]    ${product.product_name}
    ${new_locator}  String.Replace String           ${home_locator.search_txt_product_name}     {{product}}     ${product.product_name}
    common.Click when ready                         ${new_locator}