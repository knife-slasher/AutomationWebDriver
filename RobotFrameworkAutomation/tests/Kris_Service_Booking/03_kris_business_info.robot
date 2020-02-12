*** Settings ***
Documentation   Getting Started: Business Info 
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

Business Info
    Login using new account
    Launch Business Information (Smart Start) page
    Populate Valid Postal Code (If applicable) (Bussiness Location)
    Populate Valid Phone Number
    Populate Website
    Select Timezone (If applicable)
    Click Update Business Picture
    Enable Does your business have a physical address? (Disabled by Default)    
    Populate Street Address (If applicable)
    Populate City (If applicable)
    # Select State/Enter State (If applicable) # keeps getting an error
    Select Option from Dropdown     ${LOCATION_STATE_ID}    ${US_STATE}
    Select Country (If applicable) (Bussiness Location)
    # # Select your best Time & Enable/Disabled Hours of Operation ## cannot see this on page
    Click Next Step Business Location
    