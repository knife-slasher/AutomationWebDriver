*** Settings ***
Documentation     Test 7: Test adding a service with a price, one provider, and with short/long description
...
...               This test has a workflow that is created using keywords in
...               the imported resource file.
Suite Setup       Common User Login    Service Page Test_14
Suite Teardown    Close Browser
Test Setup        Generic Selenium Test Setup
Test Teardown     Generic Selenium Test Teardown
Resource          ../../pages/service_page.robot

*** Variables ***
# Setup vars
${UBER_FAIL}      'false'

*** Test Cases ***
Verify_if_providers_modal_will_open_when_clicking_the_magnifying_glass_icon
    Navigate to https://gigabook.com/services
    Click existing service
    Check "Providers"
    Click Element    css:#provlegend_id > div:nth-child(1) > a.open-providerView.gray.glyphicon.glyphicon.glyphicon-search.gray
    sleep    5s
    ${val}=    Get Text    css:#vCinfo > div.modal-header > div.row > div.col-md-12 > div > h3#myModalLabel
    Should Be True    '${val}'=='Ren Kamola'
    Click Element    css:#vCinfo > div.modal-header > div > div > div:nth-child(2) > button.btn.btn-info.btn-small
    sleep    5s
    Click Element    css:#provlegend_id > div:nth-child(2) > a.open-providerView.gray.glyphicon.glyphicon.glyphicon-search.gray
    sleep    5s
    ${val}=    Get Text    css:#vCinfo > div.modal-header > div.row > div.col-md-12 > div > h3#myModalLabel
    Should Be True    '${val}'=='Mike Ramola'
    Click Element    css:#vCinfo > div.modal-header > div > div > div:nth-child(2) > button.btn.btn-info.btn-small
    sleep    5s
    Click Element    css:#provlegend_id > div:nth-child(3) > a.open-providerView.gray.glyphicon.glyphicon.glyphicon-search.gray
    sleep    5s
    ${val}=    Get Text    css:#vCinfo > div.modal-header > div.row > div.col-md-12 > div > h3#myModalLabel
    Should Be True    '${val}'=='New Reso'
    Click Element    css:#vCinfo > div.modal-header > div > div > div:nth-child(2) > button.btn.btn-info.btn-small
    sleep    5s
