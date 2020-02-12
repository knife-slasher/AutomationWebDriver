*** Settings ***
Documentation     Test 7: Test adding a service with a price, one provider, and with short/long description
...
...               This test has a workflow that is created using keywords in
...               the imported resource file.
Suite Setup       Common User Login    Service Page Test_7
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
    Click "New Service" button
    Enter Service Name
    Enter Price
    Enter infos in the short description text field
    Enter infos in the long description text field
    Select more than one Provider
    Click "Add" button
    Delete newly created service
