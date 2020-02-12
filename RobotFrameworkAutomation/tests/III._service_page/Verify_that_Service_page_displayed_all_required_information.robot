*** Settings ***
Documentation     Test 1: Verify that Service page displayed all required information
...
...               This test has a workflow that is created using keywords in
...               the imported resource file.
Suite Setup       Common User Login    Service Page Test_1
Suite Teardown    Close Browser
Test Setup        Generic Selenium Test Setup
Test Teardown     Generic Selenium Test Teardown
Test Timeout      10 minutes
Resource          ../../pages/service_page.robot

*** Variables ***
# Setup vars
${UBER_FAIL}      'false'

*** Test Cases ***
Verify_that_Service_page_displayed_all_required_information
    Add Cookie    zaleniumMessage    https://gigabook.com/services
    Navigate to https://gigabook.com/services
    Add Cookie    zaleniumMessage    Check "New Service" button
    Check "New Service" button
    Add Cookie    zaleniumMessage    Check "Search" text field
    Check "Search" text field
    Add Cookie    zaleniumMessage    Check list icon
    Check list icon
    Add Cookie    zaleniumMessage    Check "Image" column name in the header
    Check "Image" column name in the header
    Add Cookie    zaleniumMessage    Check "Name" column name in the header
    Check "Name" column name in the header
    Add Cookie    zaleniumMessage    Check "Provider" column name in the header
    Check "Provider" column name in the header
    Add Cookie    zaleniumMessage    Check "Description" column name in the header
    Check "Description" column name in the header
    Add Cookie    zaleniumMessage    Check "Price" column name in the header
    Check "Price" column name in the header
    Add Cookie    zaleniumMessage    Check "Duration" column name in the header
    Check "Duration" column name in the header
    Add Cookie    zaleniumMessage    Check "Prep Time" column name in the header
    Check "Prep Time" column name in the header
    Add Cookie    zaleniumMessage    Check "Finish Time" column name in the header
    Check "Finish Time" column name in the header
    Add Cookie    zaleniumMessage    Check "Hidden" column name in the header
    Check "Hidden" column name in the header
    Is test Pass?

*** Keywords ***
Is test Pass?
    Add Cookie    zaleniumTestPassed    true
