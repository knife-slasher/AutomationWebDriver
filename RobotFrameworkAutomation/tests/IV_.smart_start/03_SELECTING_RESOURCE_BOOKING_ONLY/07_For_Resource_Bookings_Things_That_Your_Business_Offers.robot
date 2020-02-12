*** Settings ***
Documentation     For Resource Bookings "things" that your business offers.
...
...               This test has a workflow that is created using keywords in
...               the imported resource file.
Resource        ../../../pages/smart_start.robot

Suite Setup         Common User Login        For Resource Bookings "things" that your business offers.
Suite Teardown      Close Browser

Test Setup          Generic Selenium Test Setup
Test Teardown       Generic Selenium Test Teardown

*** Variables ***
# Setup vars
${UBER_FAIL}        'false'

*** Test Cases ***
Launch Resources (Smart Start) page
    Launch Resources (Smart Start) page (Resources)

Populate Resource Name
    Populate Resource Name (Resources)

Select Color Picker
    Select Color Picker (Resources)

Disable/Enable chosen Services
    Wait Until Keyword Succeeds     5x      800ms       Disable/Enable chosen Services (Resources)

Disable/Enable chosen Group Sessions
    Wait Until Keyword Succeeds     5x      800ms       Disable/Enable chosen Group Sessions (Resources)

Click Update Resource Picture
    Click Update Resource Picture (Resources)

Click Add More
    Click Add More (Resources)

Click X button
    Click X button (Resources)

Click Delete
    Click Delete (Resources)

Click Next Step
    Click Next Step (Resources)

Is test Pass?
    Add Cookie      zaleniumTestPassed      true