*** Settings ***
Documentation     Test 7: Test adding a service with a price, one provider, and with short/long description
...
...               This test has a workflow that is created using keywords in
...               the imported resource file.
Suite Setup       Common User Login    Service Page Test_13
Suite Teardown    Close Browser
Test Setup        Generic Selenium Test Setup
Test Teardown     Generic Selenium Test Teardown
Resource          ../../pages/service_page.robot

*** Variables ***
# Setup vars
${UBER_FAIL}      'false'

*** Test Cases ***
Verify_updating_a_service_by_unchecking_selected_assigned_providers
    Navigate to https://gigabook.com/services
    Click existing service
    ${icon_1}=    Get Element Count    css:.tbl_result_:nth-child(1) > td:nth-child(4) >a
    log    ${icon_1}
    Check "Providers"
    ${attrib}=    Get Element Attribute    jquery:a[id^='prov_link']:visible    class
    Run Keyword If    '${attrib}'=='prov_link'    Select one provider
    Select more than one Provider
    Click Update button
    ${icon_2}=    Get Element Count    css:.tbl_result_:nth-child(1) > td:nth-child(4) >a
    log    ${icon_2}
    Should Not Be Equal    ${icon_1}    ${icon_2}

*** Keywords ***
