*** Settings ***
Documentation     Test 11: Edit a service to have a price
...
...               This test has a workflow that is created using keywords in
...               the imported resource file.
Suite Setup       Common User Login    Service Page Test_11
Suite Teardown    Close Browser
Test Setup        Generic Selenium Test Setup
Test Teardown     Generic Selenium Test Teardown
Resource          ../../pages/service_page.robot

*** Variables ***
# Setup vars
${UBER_FAIL}      'false'

*** Test Cases ***
Verify_Edit_a_service_to_have_a_price
    Navigate to https://gigabook.com/services
    Click "New Service" button
    Enter Service Name
    Comment    One provider is selected by default
    Click "Add" button
    Open created service
    Edit Price
    Click Update button
    Check if price is added
    Delete newly created service
