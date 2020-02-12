*** Settings ***
Documentation   GB-501: MULTIPLE ACCOUNT.
...
...               This test has a workflow that is created using keywords in
...               the imported resource file.
Resource        ../deps/GB_501/_deps.resource

Suite Setup         Common User Login        MULTIPLE ACCOUNT
Suite Teardown      Close Browser

Test Setup          Generic Selenium Test Setup
Test Teardown       Generic Selenium Test Teardown

*** Variables ***
# Setup vars
${UBER_FAIL}        'false'

*** Test Cases ***

*** Test Cases ***
Go to Booking Widget
    Add Cookie      zaleniumMessage     Go to Booking Widget
    Go to Booking Widget
    Add Cookie      zaleniumMessage     Booking Widget Preview was displayed

Click Jump to: Options 
    Add Cookie      zaleniumMessage     Click Jump to: Options
    Click Jump to: Options 
    Add Cookie      zaleniumMessage     Booking Widget Configuration: Step 4 / 9 was displayed

Enable/Carting ON "Allow multiple appointments in a shopping cart?"
    Add Cookie      zaleniumMessage     Enable/Carting ON "Allow multiple appointments in a shopping cart?"
    Enable/Carting ON "Allow multiple appointments in a shopping cart?"
    Add Cookie      zaleniumMessage     Allow multiple appointments in a shopping cart? was enabled

Click Jump to: Reschedule/Cancel (If applicable)
    Add Cookie      zaleniumMessage     Click Jump to: Reschedule/Cancel (If applicable)
    Click Jump to: Reschedule/Cancel (If applicable)
    Add Cookie      zaleniumMessage     Booking Widget Configuration: Step 7 / 9 was displayed

Enable "Allow clients to reschedule appointment" (If applicable)
    Add Cookie      zaleniumMessage     Enable "Allow clients to reschedule appointment" (If applicable)
    Enable "Allow clients to reschedule appointment" (If applicable)
    Add Cookie      zaleniumMessage     Allow clients to reschedule appointment was enabled

Click Save button
    Add Cookie      zaleniumMessage     Click Save button
    Click Save button
    Add Cookie      zaleniumMessage     Changes was successfully saved

Click Share button
    Add Cookie      zaleniumMessage     Click Share button
    Click Share button
    Add Cookie      zaleniumMessage     Share and Embed Booking Widget modal was displayed

Click URL to Share and click Copy button
    Add Cookie      zaleniumMessage     Click URL to Share and click Copy button
    Click URL to Share and click Copy button
    Add Cookie      zaleniumMessage     URL was copied

Paste/Open the URL to another tab (Multiple)
    Add Cookie      zaleniumMessage     Paste/Open the URL to another tab
    Paste/Open the URL to another tab (Multiple)
    Add Cookie      zaleniumMessage     Actual Booking Widget was displayed

Choose which Location do you want to book
    Add Cookie      zaleniumMessage     Choose which Location do you want to book
    Choose which Location do you want to book
    Add Cookie      zaleniumMessage     Chosen Location was selected and Services selection was displayed

Choose one of our services - Click Book Now button of the chosen service
    Add Cookie      zaleniumMessage     Choose one of our services - Click Book Now button of the chosen service
    Choose one of our services - Click Book Now button of the chosen service
    Add Cookie      zaleniumMessage     Chosen Service was selected and Provider selection was displayed

Choose one of your preferred Staff Member/Provider
    Add Cookie      zaleniumMessage     Choose one of your preferred Staff Member/Provider
    Choose one of your preferred Staff Member/Provider
    Add Cookie      zaleniumMessage     Staff Member/Provider was chosen and Time buttons was displayed

Choose a date and time that works for you (Multiple Account)
    Add Cookie      zaleniumMessage     Choose a date and time that works for you (Multiple Account)
    Choose a date and time that works for you (Multiple Account)
    Add Cookie      zaleniumMessage     Chosen Date and Time was selected. Contact Information field was displayed


Fill up required contact information (Multiple Account)
    Add Cookie      zaleniumMessage     Fill up required contact information (Multiple Account)
    Fill up required contact information (Multiple Account)
    Add Cookie      zaleniumMessage     Contact Information was filled up
    
Click Submit button (Multiple Account)
    Add Cookie      zaleniumMessage     Click Submit button (Multiple Account)
    Click Submit button (Multiple Account)
    Add Cookie      zaleniumMessage     Book/Request appointment was displayed

Click Reschedule or Book a New Appointment (Multiple Account)
    Add Cookie      zaleniumMessage     Click Reschedule or Book a New Appointment (Multiple Account)
    Click Reschedule or Book a New Appointment (Multiple Account)
    Add Cookie      zaleniumMessage     Returning Customer was displayed

Click Reschedule button (Multiple Account)
    Add Cookie      zaleniumMessage     Click Reschedule or Book a New Appointment (Multiple Account)
    Click Reschedule button (Multiple Account)
    Add Cookie      zaleniumMessage     Reschedule button was clicked and Choose a date and time that works for you was displayed

Choose which Location do you want to book (Multiple Account)
    Add Cookie      zaleniumMessage     Choose which Location do you want to book (Multiple Account)
    Choose which Location do you want to book
    Add Cookie      zaleniumMessage     Chosen Location was selected and Services selection was displayed

Choose one of our services - Click Book Now button of the chosen service (Multiple Account)
    Add Cookie      zaleniumMessage     Choose one of our services - Click Book Now button of the chosen service (Multiple Account)
    Choose one of our services - Click Book Now button of the chosen service (Multiple Account)
    Add Cookie      zaleniumMessage     Chosen Service was selected and Provider selection was displayed

Choose one of your preferred Staff Member/Provider (Multiple Account)
    Add Cookie      zaleniumMessage     Choose one of your preferred Staff Member/Provider (Multiple Account)
    Choose one of your preferred Staff Member/Provider (Multiple Account)
    Add Cookie      zaleniumMessage     Staff Member/Provider was chosen and Time buttons was displayed

Choose a date and time that works for you Reschedule (Multiple Account)
    Add Cookie      zaleniumMessage     Choose a date and time that works for you Reschedule (Multiple Account)
    Choose a date and time that works for you Reschedule (Multiple Account)
    Add Cookie      zaleniumMessage     Chosen Date and Time was selected. Contact Information was displayed and Verified

Click Submit button Final (Multiple Account)
    Add Cookie      zaleniumMessage     Click Submit button (Multiple Account)
    Click Submit button Final (Multiple Account)
    Add Cookie      zaleniumMessage     Book/Request appointment was displayed and was successfully Reschedule