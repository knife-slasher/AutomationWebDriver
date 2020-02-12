*** Settings ***
Documentation     Login: User able to login successfully
...
...               This test has a workflow that is created using keywords in
...               the imported resource file.
Suite Setup       Common Browser Navigation    User able to login successfully
Suite Teardown    Close Browser
Test Setup        Generic Selenium Test Setup
Test Teardown     Generic Selenium Test Teardown
Test Timeout      10 minutes
Resource          ../../pages/login.resource

*** Variables ***
# Setup vars
${UBER_FAIL}      'false'

*** Test Cases ***
User Able to Login Successfully
    # Navigate to site
    #    Navigate to site
    Click 'Login' hyperlink (Login)
    Enter valid email address
    Enter valid password
    Click on Login button
    Is test Pass?

*** Keywords ***
Is test Pass?
    Add Cookie    zaleniumTestPassed    true
