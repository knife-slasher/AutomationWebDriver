*** Settings ***
Documentation     For Group Session Bookings that your business offers.
...
...               This test has a workflow that is created using keywords in
...               the imported resource file.
Resource        ../../../pages/smart_start.robot

Suite Setup         Common User Login        For Group Session Bookings that your business offers.
Suite Teardown      Close Browser

Test Setup          Generic Selenium Test Setup
Test Teardown       Generic Selenium Test Teardown

*** Variables ***
# Setup vars
${UBER_FAIL}        'false'

*** Test Cases ***
Launch Groups (Smart Start) page
    Launch Groups (Smart Start) page (Group)

Change What do you call the group sessions at your business? (If applicable)
    Change What do you call the group sessions at your business? (If applicable) (Group)

Populate Group Session Name
    Populate Group Session Name (Group)

Populate Price (Optional)
    Populate Price (Optional) (Group)

Click Prep Time (If applicable)
    Click Prep Time (If applicable) (Group)

Click Duration (If applicable)
    Click Duration (If applicable) (Group)

Click Finish Time (If applicable)
    Click Finish Time (If applicable) (Group)

Populate Attendee Limits (Optional) Minimum
    Populate Attendee Limits (Optional) Minimum (Group)

Populate Attendee Limits (Optional) Maximum
    Populate Attendee Limits (Optional) Maximum (Group)

Add a short description (If applicable)
    Add a short description (If applicable) (Group)

Click Update Group Picture
    Click Update Group Picture (Group)

Enable/Disable This Service is provided by: 
    Enable/Disable This Service is provided by: (Group)

Click Add More
    Click Add More (Group)

Click X button
    Click X button (Group)

Click Delete
    Click Delete (Group)

Click Next Step
    Click Next Step (Group)

Is test Pass?
    Add Cookie      zaleniumTestPassed      true