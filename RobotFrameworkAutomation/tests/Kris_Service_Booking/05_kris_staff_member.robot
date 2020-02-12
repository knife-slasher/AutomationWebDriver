*** Settings ***
Documentation   Getting Started: Staff Member Info - Verify Staff Members Info
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
Verify Staff Members Info
    ${RANDOM_FIRST_NAME}        Random First Name
    ${RANDOM_LAST_NAME}        Random Last Name
    Login using new account
    Launch Staff Member (Smart Start) page
    Change What do you call the employees at your business? (If applicable)
    Click Add More (Employees)
    Populate and Confirm        id:employees-1-first-name       ${RANDOM_FIRST_NAME}
    Populate and Confirm        id:employees-1-last-name      ${RANDOM_LAST_NAME}
    Select Color Picker (Employees)
    Enable/Disable available locations for that staff member (Employees)
    Click Update Employee Picture (Employees)
    Click Yes/No Button               employees-availability     Y    N
    Element Should Not Be Visible     id:employees-availability-panel-1
    Click Delete Button for New Item (Staff)    employees-delete
    Confirm Delete from Modal (Staff)   btn-confirm-delete-employees
    
