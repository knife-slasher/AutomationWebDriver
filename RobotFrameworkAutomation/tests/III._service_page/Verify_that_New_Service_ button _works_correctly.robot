*** Settings ***
Documentation     Test 2: "Verify that ""New Service"" button works correctly
...
...               This test has a workflow that is created using keywords in
...               the imported resource file.
Suite Setup       Common User Login    Service Page Test_2
Suite Teardown    Close Browser
Test Setup        Generic Selenium Test Setup
Test Teardown     Generic Selenium Test Teardown
Resource          ../../pages/service_page.robot

*** Variables ***
# Setup vars
${UBER_FAIL}      'false'

*** Test Cases ***
Verify_that_New_Service_ button _works_correctly
    Navigate to https://gigabook.com/services
    Click "New Service" button
