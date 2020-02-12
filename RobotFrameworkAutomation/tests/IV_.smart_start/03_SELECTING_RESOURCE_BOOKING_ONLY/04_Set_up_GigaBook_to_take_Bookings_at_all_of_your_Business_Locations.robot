*** Settings ***
Documentation     Set up GigaBook to take Bookings at all of your Business Locations.
...
...               This test has a workflow that is created using keywords in
...               the imported resource file.
Resource        ../../../pages/smart_start.robot

Suite Setup         Common User Login        Set up GigaBook to take Bookings at all of your Business Locations
Suite Teardown      Close Browser

Test Setup          Generic Selenium Test Setup
Test Teardown       Generic Selenium Test Teardown

*** Variables ***
# Setup vars
${UBER_FAIL}        'false'

*** Test Cases ***
Launch Business Locations (Smart Start) page
    Launch Business Locations (Smart Start) page

Main Location was displayed. Populate Currency (If applicable)
    Main Location was displayed. Populate Currency (If applicable)

Populate Tax Rate (If applicable)
    Populate Tax Rate (If applicable)

Click Add More
    Click Add More

Populate Location Name
    Populate Location Name

Populate Valid Postal Code (If applicable)
    Populate Valid Postal Code (If applicable) (Bussiness Location)

Populate Valid Phone Number (Bussiness Location)
    Wait Until Keyword Succeeds     5x      800ms       Populate Valid Phone Number (Bussiness Location)

Populate Website (Bussiness Location)
    Populate Website (Bussiness Location)

Select Timezone (If applicable) (Bussiness Location)
    Select Timezone (If applicable) (Bussiness Location)

Click Update Business Picture (Bussiness Location)
    Click Update Business Picture (Bussiness Location)

Enable Does your business have a physical address? (Disabled by Default) (Bussiness Location)
    Enable Does your business have a physical address? (Disabled by Default) (Bussiness Location)

Populate Street Address (If applicable) (Bussiness Location)
    Populate Street Address (If applicable) (Bussiness Location)

Populate City (If applicable) (Bussiness Location)
    Populate City (If applicable) (Bussiness Location)

Select State/Enter State (If applicable) (Bussiness Location)
    Select State/Enter State (If applicable) (Bussiness Location)

Select Country (If applicable) (Bussiness Location)
    Select Country (If applicable) (Bussiness Location)

Select Currency (Bussiness Location)
    Select Currency (Bussiness Location)

Populate Tax Rate (Bussiness Location)
    Populate Tax Rate (Bussiness Location)

# Delete Locations

Click X button
    Click X button

Click Delete
    Click Delete

Click Next Step
    Click Next Step Employees

Is test Pass?
    Add Cookie      zaleniumTestPassed      true