*** Settings ***
Documentation     Login: Correct error message displays if invalid password.
...
...               This test has a workflow that is created using keywords in
...               the imported resource file.
Suite Setup       Common Browser Navigation    Correct error message displays if invalid password.
Suite Teardown    Close Browser
Test Setup        Generic Selenium Test Setup
Test Teardown     Generic Selenium Test Teardown
Test Timeout      10 minutes
Resource          ../../pages/login.resource

*** Variables ***
# Setup vars
${UBER_FAIL}      'false'

*** Test Cases ***
Correct_Error_Message_Displays_If_Invalid_Password
    Click 'Login' hyperlink (Login)
    Enter valid email address
    Enter invalid password
    Click on Login button (Invalid Password)
    Is test Pass?

*** Keywords ***
Is test Pass?
    Add Cookie    zaleniumTestPassed    true
