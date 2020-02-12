*** Settings ***
Documentation     Test 3: Verify that "Add Service" modal displayed Service required features
...
...               This test has a workflow that is created using keywords in
...               the imported resource file.
Suite Setup       Common User Login    Service Page Test_3
Suite Teardown    Close Browser
Test Setup        Generic Selenium Test Setup
Test Teardown     Generic Selenium Test Teardown
Resource          ../../pages/service_page.robot

*** Variables ***
# Setup vars
${UBER_FAIL}      'false'

*** Test Cases ***
Verify_that_Add_Service_modal_displayed_Service_required_features
    Navigate to https://gigabook.com/services
    Click "New Service" button
    Check "Add Service" modal label
    Check "Service Name" text field
    Check "Price" text field
    Check "Prep Time", "Duration", and "Finish Time slider"
    Check "Providers"
    Check "Choose Image" button
    Check "Short Description" text field
    Check "Long Description" text field
    Check "Hidden" sliding button
