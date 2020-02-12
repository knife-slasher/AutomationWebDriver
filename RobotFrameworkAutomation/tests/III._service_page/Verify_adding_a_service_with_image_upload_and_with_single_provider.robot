*** Settings ***
Documentation     Test 8: Test adding a service with image upload and with single provider
...
...               This test has a workflow that is created using keywords in
...               the imported resource file.
Suite Setup       Common User Login    Service Page Test_8
Test Setup        Generic Selenium Test Setup
Test Teardown     Generic Selenium Test Teardown
Resource          ../../pages/service_page.robot

*** Variables ***
# Setup vars
${UBER_FAIL}      'false'

*** Test Cases ***
Verify_adding_a_service_with_image_upload_and_with_single_provider
    Navigate to https://gigabook.com/services
    Click "New Service" button
    Enter Service Name
    Enter Price
    Comment    One provider is selected by default
    Comment    Need revision
    Check the selected service image
    Click "Crop" button
    Click "Add" button
    Open created service
    Check if image is changed
    Delete newly created service
