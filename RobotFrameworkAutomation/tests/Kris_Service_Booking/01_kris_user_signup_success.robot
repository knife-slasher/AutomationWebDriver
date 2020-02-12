*** Settings ***
Documentation   User Sign Up Success: To test User if it's able to sign up successfully
...             SELECTING SERVICE BOOKING ONLY
...               This test has a workflow that is created using keywords in
...               the imported resource file.
Resource        ../../pages/Kris_Service_Booking/kris_service_booking_actions.resource

Test Timeout    10 minutes

Suite Setup         Common Browser Navigation        User Sign Up
Suite Teardown      Close Browser

Test Setup          Generic Selenium Test Setup
Test Teardown       Generic Selenium Test Teardown

*** Variables ***
# Setup vars
${UBER_FAIL}        'false'

*** Test Cases ***
User Sign Up Success
    Click 'Free Trial' Hyperlink
    Populate Business / Organization Name
    Populate First Name
    Populate Last Name
    Populate Email Address with Valid Credentials
    Populate Phone Number
    Populate Password with Valid Credentials
    Populate Password (again)
    Set 'Terms and Conditions' button to ON
    Click on 'Create Account' button


