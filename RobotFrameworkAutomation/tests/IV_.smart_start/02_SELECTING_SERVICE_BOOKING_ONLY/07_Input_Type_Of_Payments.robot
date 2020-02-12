*** Settings ***
Documentation     Input Type of Payments.
...
...               This test has a workflow that is created using keywords in
...               the imported resource file.
Resource        ../../../pages/smart_start.robot

Suite Setup         Common User Login        Input Type of Payments.
Suite Teardown      Close Browser

Test Setup          Generic Selenium Test Setup
Test Teardown       Generic Selenium Test Teardown

*** Variables ***
# Setup vars
${UBER_FAIL}        'false'

*** Test Cases ***
Launch Payment, Invoices and Taxes (Smart Start) page
    Launch Payment, Invoices and Taxes (Smart Start) page (Invoice/Payments)

Choose Payment Method you like and Connect
    Choose Payment Method you like and Connect (Invoice/Payments)

Select Currency
    Select Currency (Invoice/Payments)

Enable Do you want to collect payment at the time the appointment is booked?
    Enable Do you want to collect payment at the time the appointment is booked? (Invoice/Payments)

Enable Do you want to automatically send invoices when collecting payments?
    Enable Do you want to automatically send invoices when collecting payments? (Invoice/Payments)

Enable/Disable Do you need to charge tax on the services you provide?
    Enable/Disable Do you need to charge tax on the services you provide? (Invoice/Payments)

If Yes/Enabled, Populate What is the tax rate? (If applicable)
    If Yes/Enabled, Populate What is the tax rate? (If applicable) (Invoice/Payments)

Click Next Step
    Click Next Step (Invoice/Payments)(Service Booking Only)
    

Is test Pass?
    Add Cookie      zaleniumTestPassed      true