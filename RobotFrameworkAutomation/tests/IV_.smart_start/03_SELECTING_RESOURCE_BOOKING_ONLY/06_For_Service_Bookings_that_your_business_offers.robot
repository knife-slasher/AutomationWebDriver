*** Settings ***
Documentation     For Service Bookings that your business offers.
...
...               This test has a workflow that is created using keywords in
...               the imported resource file.
Resource        ../../../pages/smart_start.robot

Suite Setup         Common User Login        For Service Bookings that your business offers.
Suite Teardown      Close Browser

Test Setup          Generic Selenium Test Setup
Test Teardown       Generic Selenium Test Teardown

*** Variables ***
# Setup vars
${UBER_FAIL}        'false'

*** Test Cases ***
Launch Services (Smart Start) page
    Launch Services (Smart Start) page (Service)

Populate Service Name
    Populate Service Name (Service)

Populate Price (Optional)
    Populate Price (Optional) (Service)

Click Prep Time (If applicable)
    Click Prep Time (If applicable) (Service)

Click Duration (If applicable)
    Click Duration (If applicable) (Service)

Click Finish Time (If applicable)
    Click Finish Time (If applicable) (Service)

Click Update Service Picture
    Click Update Service Picture (Service)

Disable Allow Home Service (If applicable)
    Disable Allow Home Service (If applicable) (Service)

Add a short description (If applicable)
    Add a short description (If applicable) (Service)

Enable/Disable This Service is provided by: 
    Enable/Disable This Service is provided by: (Service)

Click Add More
    Click Add More (Service)

Click X button
    Click X button (Service)

Click Delete
    Click Delete (Service)

Click Next Step
    Click Next Step (Service) (Resource Booking Only)

Is test Pass?
    Add Cookie      zaleniumTestPassed      true