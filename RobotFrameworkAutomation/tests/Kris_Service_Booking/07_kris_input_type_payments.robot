*** Settings ***
Documentation   Getting Started: For Service Bookings that your business offers - Verify populated data for Service Bookings
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

Launch Payment, Invoices and Taxes (Smart Start) page Test
    Login using new account
    Launch Payment, Invoices and Taxes (Smart Start) page

Choose Payment Method and Connect (Stripe) Test
    Choose Stripe Payment Method and Connect
    Close Window                    

Select Currency Test
    Select Window                   title=Smart Start | Invoices/Payments  
    Select Option from Dropdown     id=invoices-payments-currency       Canadian Dollar

Enable Do you want to collect payment at the time the appointment is booked Test
    Enable Do you want to collect payment at the time the appointment is booked

Enable Do you want to automatically send invoices when collecting payments Test
    Enable Do you want to automatically send invoices when collecting payments

Enable/Disable Do you need to charge tax on the services you provide Test
    Enable/Disable Do you need to charge tax on the services you provide

If Yes/Enabled, Populate What is the tax rate? (If applicable) Test
    If Yes/Enabled, Populate What is the tax rate? (If applicable)

Click Next Step (from Invoices/Payments) Test
    Click Next Step (from Invoices/Payments)