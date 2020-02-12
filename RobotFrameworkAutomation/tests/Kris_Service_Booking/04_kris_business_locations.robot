*** Settings ***
Documentation   Getting Started: Business Locations - Verify Buttons
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
Verify Buttons in Business Locations
    Login using new account
    Launch Business Locations (Smart Start) page
    Main Location was displayed. Populate Currency (If applicable)
    Populate Tax Rate (If applicable)
    Click Add More
    Populate Location Name
    Populate Valid Postal Code (If applicable) (Bussiness Location)
    Populate Valid Phone Number (Bussiness Location)
    Populate Website (Bussiness Location)
    Select Timezone (If applicable) (Bussiness Location)
    Click Update Business Picture (Bussiness Location)
    Enable Does your business have a physical address? (Disabled by Default) (Bussiness Location)
    Populate Street Address (If applicable) (Bussiness Location)
    Populate City (If applicable) (Bussiness Location)
    Select State/Enter State (If applicable) (Bussiness Location)
    Select Country (If applicable) (Bussiness Location)     
    Select Currency (Bussiness Location)
    Populate Tax Rate (Bussiness Location)
    Click Delete Button for New Item (Business Location, Staff)   business-locations-delete
    Confirm Delete from Modal (Staff)                             btn-confirm-delete-business-locations
    Click Next Step (Employee Link)

