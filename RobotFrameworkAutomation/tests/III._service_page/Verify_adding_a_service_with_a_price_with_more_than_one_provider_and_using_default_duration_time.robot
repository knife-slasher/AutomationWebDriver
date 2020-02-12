*** Settings ***
Documentation     Test 6: Test adding a service with a price, with more than one provider, and using default duration time
...
...               This test has a workflow that is created using keywords in
...               the imported resource file.
Suite Setup       Common User Login    Service Page Test_6
Suite Teardown    Close Browser
Test Setup        Generic Selenium Test Setup
Test Teardown     Generic Selenium Test Teardown
Resource          ../../pages/service_page.robot

*** Variables ***
# Setup vars
${UBER_FAIL}      'false'

*** Test Cases ***
Verify_adding_a_service_with_a_price_with_more_than_one_provider_and_using_default_duration_time
    Navigate to https://gigabook.com/services
    Click "New Service" button
    Enter Service Name
    Enter Price
    Select more than one Provider
    Click "Add" button
    Delete newly created service
