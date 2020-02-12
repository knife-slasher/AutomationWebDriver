*** Settings ***
Documentation     Test 10: Test adding a service with Prep Time, Duration, and Finish Time
...
...               This test has a workflow that is created using keywords in
...               the imported resource file.
Suite Setup       Common User Login    Service Page Test_10
Suite Teardown    Close Browser
Test Setup        Generic Selenium Test Setup
Test Teardown     Generic Selenium Test Teardown
Resource          ../../pages/service_page.robot

*** Variables ***
# Setup vars
${UBER_FAIL}      'false'

*** Test Cases ***
Verify_adding_a_service_with_Prep_Time_Duration_and_Finish_Time
    Navigate to https://gigabook.com/services
    Click "New Service" button
    Enter Service Name
    Click Prep Time time-picker field
    Click Duration time-picker field
    Click Finish Time time-picker field
    Comment    One provider is selected by default
    Click "Add" button
    Delete newly created service
