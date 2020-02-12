*** Settings ***
Documentation   Getting Started with your Account.
...
...               This test has a workflow that is created using keywords in
...               the imported resource file.
Resource        ../../../pages/smart_start.robot

Suite Setup         Common User Login        Getting Started with your Account
Suite Teardown      Close Browser

Test Setup          Generic Selenium Test Setup
Test Teardown       Generic Selenium Test Teardown

*** Variables ***
# Setup vars
${UBER_FAIL}        'false'

*** Test Cases ***
Launch Gigabook Welcome Page - Quick Tour, Account Setup (Smart Start) and Gigatips
    Launch Gigabook Welcome Page - Quick Tour, Account Setup (Smart Start) and Gigatips

Click Account Setup (Smart Start)
    Click Account Setup (Smart Start)

Click Service Booking, Group Function Registration and Resource Bookings (Smart Start - Intro Questions)
    Click Service Booking, Group Function Registration and Resource Bookings (Smart Start - Intro Questions)

Enable Does your business have more than one employee? (Smart Start - Intro Questions)
    Enable Does your business have more than one employee? (Smart Start - Intro Questions)

Enable Does your business have more than one location? (Smart Start - Intro Questions)
    Enable Does your business have more than one location? (Smart Start - Intro Questions)

Enable Do you want to take payments online or through GigaBook invoicing? (Smart Start - Intro Questions)
    Enable Do you want to take payments online or through GigaBook invoicing? (Smart Start - Intro Questions)

Enable Do you want to connect GigaBook to Apple, Outlook, Google Calendar? (Smart Start - Intro Questions)
    Enable Do you want to connect GigaBook to Apple, Outlook, Google Calendar? (Smart Start - Intro Questions)

Enable Do you provide services at your client's location? (Smart Start - Intro Questions)
    Enable Do you provide services at your client's location? (Smart Start - Intro Questions)
    
Click Next Step
    Click Next Step To Business Information

Is test Pass?
    Add Cookie      zaleniumTestPassed      true
