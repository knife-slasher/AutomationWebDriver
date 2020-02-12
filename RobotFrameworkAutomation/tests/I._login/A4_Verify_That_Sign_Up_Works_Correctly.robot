*** Settings ***
Documentation     Login: Verify that Sign Up works correctly.
...
...               This test has a workflow that is created using keywords in
...               the imported resource file.
Suite Setup       Common Browser Navigation    Verify that Sign Up works correctly.
Suite Teardown    Close Browser
Test Setup        Generic Selenium Test Setup
Test Teardown     Generic Selenium Test Teardown
Test Timeout      10 minutes
Resource          ../../pages/login.resource

*** Variables ***
# Setup vars
${UBER_FAIL}      'false'

*** Test Cases ***
Verify_That_Sign_Up_Works_Correctly
    Click 'Login' hyperlink (Login)
    Click on 'Sign Up Now' button (Signup)
    Enter Business / Organization Name (Signup)
    Enter First Name (Signup)
    Enter Last Name (Signup)
    Enter Email Address (Signup)
    Enter Phone (Signup)
    Enter Password (Signup)
    re Enter Password (Signup)
    Set 'Terms and Conditions' button to ON (Signup)
    Click on 'Create Account' button (Signup)
    Is test Pass?

*** Keywords ***
Is test Pass?
    ${cook}=    Add Cookie    zaleniumTestPassed    true
    log    ${cook}
