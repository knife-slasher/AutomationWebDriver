*** Settings ***
Documentation     Test 9: Test hidding a service
...
...               This test has a workflow that is created using keywords in
...               the imported resource file.
Suite Setup       Common User Login    Service Page Test_9
Suite Teardown    Close Browser
Test Setup        Generic Selenium Test Setup
Test Teardown     Generic Selenium Test Teardown
Resource          ../../pages/service_page.robot

*** Variables ***
# Setup vars
${UBER_FAIL}      'false'

*** Test Cases ***
Verify_hidding_or not_hidding_a_service
    Navigate to https://gigabook.com/services
    Click existing service
    Click "Hidden" sliding button
