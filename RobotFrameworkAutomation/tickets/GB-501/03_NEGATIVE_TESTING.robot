*** Settings ***
Documentation   GB-501: NEGATIVE TESTING.
...
...               This test has a workflow that is created using keywords in
...               the imported resource file.
Resource        ../deps/GB_501/_deps.resource

Suite Setup         Common User Login        NEGATIVE TESTING 
Suite Teardown      Close Browser

Test Setup          Generic Selenium Test Setup
Test Teardown       Generic Selenium Test Teardown

*** Variables ***
# Setup vars
${UBER_FAIL}        'false'

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

Paste/Open the URL to another tab
    Add Cookie      zaleniumMessage     Paste/Open the URL to another tab
    Paste/Open the URL to another tab (Multiple)
    Add Cookie      zaleniumMessage     Actual Booking Widget was displayed

Choose a date and time that works for you
    Add Cookie      zaleniumMessage     Choose a date and time that works for you
    Choose a date and time that works for you
    Add Cookie      zaleniumMessage     Chosen Date and Time was selected. Contact Information field was displayed

Fill up required contact information
    Add Cookie      zaleniumMessage     Fill up required contact information
    Fill up required contact information
    Add Cookie      zaleniumMessage     Contact Information was filled up

Click Submit button
    Add Cookie      zaleniumMessage     Click Submit button
    Click Submit button
    Add Cookie      zaleniumMessage     Book/Request appointment was displayed

Click Reschedule or Book a New Appointment
    Add Cookie      zaleniumMessage     Click Reschedule or Book a New Appointment
    Click Reschedule or Book a New Appointment
    Add Cookie      zaleniumMessage     Returning Customer was displayed

Click Reschedule button
    Add Cookie      zaleniumMessage     Click Reschedule button
    Click Reschedule button
    Add Cookie      zaleniumMessage     Reschedule button was clicked and Choose a date and time that works for you was displayed

Choose a date and time that works for you Reschedule
    Add Cookie      zaleniumMessage     Choose a date and time that works for you
    Choose a date and time that works for you Reschedule
    Add Cookie      zaleniumMessage     Chosen Date and Time was selected. Contact Information was displayed and Verified

Click Submit button Final
    Add Cookie      zaleniumMessage     Click Submit button
    Click Submit button Final
    Add Cookie      zaleniumMessage     Chosen Location was selected and Services selection was displayed
    