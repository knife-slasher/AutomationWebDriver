*** Settings ***
Documentation   Business Info.
...
...               This test has a workflow that is created using keywords in
...               the imported resource file.
Resource        ../../pages/smart_start.robot

Suite Setup         Common User Login        Business Info
Suite Teardown      Close Browser

Test Setup          Generic Selenium Test Setup
Test Teardown       Generic Selenium Test Teardown

*** Variables ***
# Setup vars
${UBER_FAIL}        'false'

*** Test Cases ***
Launch Business Information (Smart Start) page
    Launch Business Information (Smart Start) page

Populate Valid Postal Code (If applicable)
    Populate Valid Postal Code (If applicable)

Populate Valid Phone Number
    Wait Until Keyword Succeeds     5x      800ms       Populate Valid Phone Number

Populate Website
    Populate Website

Select Timezone (If applicable)
    Select Timezone (If applicable)

Click Update Business Picture
    Click Update Business Picture

Enable Does your business have a physical address? (Disabled by Default)
    Enable Does your business have a physical address? (Disabled by Default)

Populate Street Address (If applicable)
    Populate Street Address (If applicable)

Populate City (If applicable)
    Populate City (If applicable)

Select State/Enter State (If applicable)
    Select State/Enter State (If applicable)

Select Country (If applicable)
    Select Country (If applicable)

# Select your best Time & Enable/Disabled Hours of Operation
#     Select your best Time & Enable/Disabled Hours of Operation

Click Next Step
    Click Next Step Business Location

Is test Pass?
    Add Cookie      zaleniumTestPassed      true


