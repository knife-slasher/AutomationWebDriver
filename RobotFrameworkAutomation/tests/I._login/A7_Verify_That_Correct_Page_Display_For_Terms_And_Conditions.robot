*** Settings ***
Documentation     Login: Verify that correct page display for Terms and Conditions.
...
...               This test has a workflow that is created using keywords in
...               the imported resource file.
Suite Setup       Common Browser Navigation    Verify that correct page display for Terms and Conditions.
Suite Teardown    Close Browser
Test Setup        Generic Selenium Test Setup
Test Teardown     Generic Selenium Test Teardown
Test Timeout      10 minutes
Resource          ../../pages/login.resource

*** Variables ***
# Setup vars
${UBER_FAIL}      'false'

*** Test Cases ***
Verify_That_Correct_Page_Display_For_Terms_And_Conditions
    Click 'Login' hyperlink (Login)
    Click on 'Sign Up Now' button (Signup)
    On Sign Up Form, Click on Terms and Conditions
    Is test Pass?

*** Keywords ***
Is test Pass?
    Add Cookie    zaleniumTestPassed    true
