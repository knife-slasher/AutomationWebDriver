*** Settings ***
Documentation     Test 7: Test adding a service with a price, one provider, and with short/long description
...
...               This test has a workflow that is created using keywords in
...               the imported resource file.
Suite Setup       Common User Login    Service Page Test_12
Suite Teardown    Close Browser
Test Setup        Generic Selenium Test Setup
Test Teardown     Generic Selenium Test Teardown
Resource          ../../pages/service_page.robot

*** Variables ***
# Setup vars
${UBER_FAIL}      'false'

*** Test Cases ***
Verify_adding_a_service_with_a_price_one provider_and_with_short_or_long_description
    Navigate to https://gigabook.com/services
    Click existing service
    #comparing pre-time old and new value
    ${slider_min}=    Get Element Attribute    css=.ui-slider-range-min    style
    Input Text    css=#SerPrepTimeEdit    0:30
    Click Element    css=#PriceIDUPDATE
    ${slidermin_newVal}=    Get Element Attribute    css=.ui-slider-range-min    style
    Should Not Be Equal    ${slider_min}    ${slidermin_newVal}
    #comparing Finish time old and new value
    ${slider_max}=    Get Element Attribute    css=.ui-slider-range-max    style
    Input Text    css=#SerFinishTimeEdit    0:40
    Click Element    css=#PriceIDUPDATE
    ${slidermax_newVal}=    Get Element Attribute    css=.ui-slider-range-max    style
    Should Not Be Equal    ${slider_max}    ${slidermax_newVal}
    #Click update button
    Click Update button
    sleep    5s
    Element Should Contain    css:.tbl_result_:nth-child(1) > td:nth-child(9) > a    0:40
    Element Should Contain    css:.tbl_result_:nth-child(1) > td:nth-child(8) > a    0:30
    [Teardown]    teardown

*** Keywords ***
teardown
    Navigate to https://gigabook.com/services
    Click Element    ${FIRST_SERVICE}
    Sleep    5s
    Input Text    css=#SerPrepTimeEdit    0:05
    Click Element    css=#PriceIDUPDATE
    Input Text    css=#SerFinishTimeEdit    0:10
    Click Element    css=#PriceIDUPDATE
    Click Update button
