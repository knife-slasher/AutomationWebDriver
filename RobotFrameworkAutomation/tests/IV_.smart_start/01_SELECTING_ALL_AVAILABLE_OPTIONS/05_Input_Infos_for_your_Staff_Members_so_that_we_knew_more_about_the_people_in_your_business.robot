*** Settings ***
Documentation     Input Info's for your Staff Members so that we knew more about the people in your business.
...
...               This test has a workflow that is created using keywords in
...               the imported resource file.
Resource        ../../../pages/smart_start.robot

Suite Setup         Common User Login        Input Info's for your Staff Members so that we knew more about the people in your business.
Suite Teardown      Close Browser

Test Setup          Generic Selenium Test Setup
Test Teardown       Generic Selenium Test Teardown

*** Variables ***
# Setup vars
${UBER_FAIL}        'false'

*** Test Cases ***
Launch Staff Member (Smart Start) page
    Launch Staff Member (Smart Start) page

Change What do you call the employees at your business? (If applicable)
    Change What do you call the employees at your business? (If applicable)

Click Add More
    Click Add More (Employees)

Populate First Name
    Populate First Name (Employees)

Populate Last Name
    Populate Last Name (Employees)

Populate Valid Email
    Populate Valid Email (Employees)

Select Color Picker
    Select Color Picker (Employees)

Enable/Disable available locations for that staff member
    Enable/Disable available locations for that staff member (Employees)

Click Update Employee Picture
    Click Update Employee Picture (Employees)

Yes/No (Enable/Disable) Do you want to setup the availability of your staff now?
    Yes/No (Enable/Disable) Do you want to setup the availability of your staff now? (Employees)

# If Yes, Select your best Time & Enable/Disabled Availability of your Staff Member
#     If Yes, Select your best Time & Enable/Disabled Availability of your Staff Member

Click X button
    Click X button (Employees)

Click Delete
    Click Delete (Employees)

Click Next Step
    Click Next Step (Employees)

Is test Pass?
    Add Cookie      zaleniumTestPassed      true