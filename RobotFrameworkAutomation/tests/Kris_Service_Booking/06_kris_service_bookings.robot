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
Launch Services (Smart Start) page (Service) Test
    Login using new account
    Launch Services (Smart Start) page (Service)

Populate Service Name Test
    Populate and Confirm        id=services-0-service       QA Automation

Populate Price (Optional) Test
    Populate and Confirm        id=services-0-price         99.50


Click Prep Time (If applicable) Test
    Force Scroll Up             128
    Click Prep Time Button
    Time Modal Up Up Down Check
    Prep Time Updated
    
Click Duration (If applicable) Test
    Click Duration Time Button
    Time Modal Up Up Down Check
    Duration Time Updated

Click Finish Time (If applicable) Test
    Click Finish Time Button
    Time Modal Up Up Down Check
    Finish Time Updated

Click Update Service Picture (Service) Test
    Click Update Service Picture (Service)

Disable Allow Home Service (If applicable) Test
    Disable Allow Home Service (If applicable) (Service)

Add a short description (If applicable) (Service) Test
    Add a short description (If applicable) (Service)

Enable/Disable This Service is provided by (Service) Test
    Enable/Disable This Service is provided by: (Service)

Click Add More (Service) Test
    Click Add More (Service)

Click X button (Service) Test
    Click X button (Service)

Click Delete (Service) Test
    Click Delete (Service)

Click Next Step (Service) Test
    Click Next Step (Service)