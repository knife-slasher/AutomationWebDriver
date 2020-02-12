*** Settings ***
Documentation   User Sign Up: To verify that user is able to sign into the account successfully.
...
...               This test has a workflow that is created using keywords in
...               the imported resource file.
Resource        ../../../pages/smart_start.robot

Test Timeout    10 minutes

Suite Setup         Common Browser Navigation        User Sign Up
Suite Teardown      Close Browser

Test Setup          Generic Selenium Test Setup
Test Teardown       Generic Selenium Test Teardown

*** Variables ***
# Setup vars
${UBER_FAIL}        'false'

*** Test Cases ***
Launch Gigabook website
    Add Cookie      zaleniumMessage     Launch Gigabook website
    Launch Gigabook website
    Add Cookie      zaleniumMessage     Gigabook homepage was displayed

Click 'Free Trial' Hyperlink
    Add Cookie      zaleniumMessage     Click 'Free Trial' Hyperlink
    Click 'Free Trial' Hyperlink
    Add Cookie      zaleniumMessage     Sign up form page was displayed

Populate Business / Organization Name
    Add Cookie      zaleniumMessage     Populate Business / Organization Name
    Populate Business / Organization Name
    Add Cookie      zaleniumMessage     Business / Organization Name was populated

Populate First Name
    Add Cookie      zaleniumMessage     Populate First Name
    Populate First Name
    Add Cookie      zaleniumMessage     First Name was populated

Populate Last Name
    Add Cookie      zaleniumMessage     Populate Last Name
    Populate Last Name
    Add Cookie      zaleniumMessage     Last Name was populated

Populate Email Address with Valid Credentials
    Add Cookie      zaleniumMessage     Populate Email Address with Valid Credentials
    Populate Email Address with Valid Credentials
    Add Cookie      zaleniumMessage     Email Address was populated

Populate Phone Number
    Add Cookie      zaleniumMessage     Populate Phone Number
    Populate Phone Number
    Add Cookie      zaleniumMessage     Phone Number was populated

Populate Password with Valid Credentials
    Add Cookie      zaleniumMessage     Populate Password with Valid Credentials
    Populate Password with Valid Credentials
    Add Cookie      zaleniumMessage     Password was populated

Populate Password (again)
    Add Cookie      zaleniumMessage     Populate Password (again)
    Populate Password (again)
    Add Cookie      zaleniumMessage     Re-Enter Password was populated

Set 'Terms and Conditions' button to ON
    Add Cookie      zaleniumMessage     Set 'Terms and Conditions' button to ON
    Set 'Terms and Conditions' button to ON
    Add Cookie      zaleniumMessage     Terms and Conditions button was set to ON

Click on 'Create Account' button
    Add Cookie      zaleniumMessage     Click on 'Create Account' button
    Click on 'Create Account' button
    Add Cookie      zaleniumMessage     Redirected to Welcome Page

Is test Pass?
    Add Cookie      zaleniumTestPassed      true
