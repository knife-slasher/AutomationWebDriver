*** Settings ***
Documentation   Login Test Case 2 - Correct error message displays if invalid email address. Step-wise
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
Correct error message displays if invalid email address
    Click 'Login' hyperlink. 
    Enter invalid email address.
    Enter valid password.
    Click on Login button. 
    Kris expects Email Not Found Error
    Kris expects Redirect to Login URL