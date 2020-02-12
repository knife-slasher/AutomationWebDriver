*** Settings ***
Documentation   Getting Started: For Service Bookings that your business offers - Verify populated data for Service Bookings
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
Launch Reminder and Notification Settings (Smart Start) Test
    Login using new account
    Launch Reminder and Notification Settings (Smart Start) 

Choose How do you want to send booking confirmations? and Who can receive notifications for booking confirmations? Test
    Choose How do you want to send booking confirmations? and Who can receive notifications for booking confirmations