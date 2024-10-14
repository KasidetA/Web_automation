*** Settings ***
Library    SeleniumLibrary
Library    String
Library    DateTime
Library    OperatingSystem

Variables    ${CURDIR}/../../resources/testdata/testdata.yaml
Variables    ${CURDIR}/../../resources/testdata/generated_email.yaml
Variables    ${CURDIR}/../../resources/setting/setting.yaml

Resource    ${CURDIR}/../../keywords/features/log_in_feature.robot
Resource    ${CURDIR}/../../keywords/features/product_feature.robot
Resource    ${CURDIR}/../../keywords/features/cart_feature.robot
Resource    ${CURDIR}/../../keywords/features/payment_feature.robot

Resource    ${CURDIR}/../../keywords/pages/home_page.robot
Resource    ${CURDIR}/../../keywords/pages/user_profile_page.robot
Resource    ${CURDIR}/../../keywords/pages/log_in_page.robot
Resource    ${CURDIR}/../../keywords/pages/register_page.robot
Resource    ${CURDIR}/../../keywords/pages/payment_page.robot
Resource    ${CURDIR}/../../keywords/pages/cart_page.robot
Resource    ${CURDIR}/../../keywords/pages/product_page.robot
Resource    ${CURDIR}/../../keywords/pages/product_detail_page.robot

Resource    ${CURDIR}/../../keywords/locators/home_locator.robot
Resource    ${CURDIR}/../../keywords/locators/cart_locator.robot
Resource    ${CURDIR}/../../keywords/locators/common_locator.robot
Resource    ${CURDIR}/../../keywords/locators/log_in_locator.robot
Resource    ${CURDIR}/../../keywords/locators/payment_locator.robot
Resource    ${CURDIR}/../../keywords/locators/register_locator.robot
Resource    ${CURDIR}/../../keywords/locators/user_profile_locator.robot
Resource    ${CURDIR}/../../keywords/locators/product_locator.robot

Resource    ${CURDIR}/../../keywords/commons/common.robot