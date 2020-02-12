*** Settings ***
Documentation     Test 4: Test adding a service without a price, and using default duration time
...
...               This test has a workflow that is created using keywords in
...               the imported resource file.
Suite Setup       Common User Login    Service Page Test_4
Suite Teardown    Close Browser
Test Setup        Generic Selenium Test Setup
Test Teardown     Generic Selenium Test Teardown
Resource          ../../pages/service_page.robot

*** Variables ***
# Setup vars
${UBER_FAIL}      'false'

*** Test Cases ***
Verify_adding_a_service_without_a_price_and_using_default_duration_time
    Navigate to https://gigabook.com/services
    Click "New Service" button
    Enter Service Name
    Comment    One provider is selected by default
    Click "Add" button
    Delete newly created service
