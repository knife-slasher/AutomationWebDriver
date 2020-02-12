*** Settings ***
Documentation   Login Test Case - Verify that Sign Up works correctly. 
...
...               This test has a workflow that is created using keywords in
...               the imported resource file.
Resource        ../../pages/Kris_login/kris_login.resource
Resource        ../../pages/Kris_login/kris_login_expectations.resource

Test Timeout    10 minutes

Suite Setup         Common Browser Navigation        User able to login successfully
Suite Teardown      Close Browser

Test Setup          Generic Selenium Test Setup
Test Teardown       Generic Selenium Test Teardown

*** Variables ***
# Setup vars
${UBER_FAIL}        'false'

*** Test Cases ***
Click Login HyperLink
    Click 'Login' hyperlink.
    Kris expects for Login Modal

Click on 'Sign Up Now' Button.
    Click 'Login' hyperlink.
