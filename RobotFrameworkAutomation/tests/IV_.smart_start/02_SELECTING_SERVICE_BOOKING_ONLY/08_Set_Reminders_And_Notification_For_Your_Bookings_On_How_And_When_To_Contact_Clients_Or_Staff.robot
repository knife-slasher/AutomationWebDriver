*** Settings ***
Documentation     Set Reminders & Notification for your Bookings on how and when to contact Clients or Staff.
...
...               This test has a workflow that is created using keywords in
...               the imported resource file.
Resource        ../../../pages/smart_start.robot

Suite Setup         Common User Login        Set Reminders & Notification for your Bookings on how and when to contact Clients or Staff.
Suite Teardown      Close Browser

Test Setup          Generic Selenium Test Setup
Test Teardown       Generic Selenium Test Teardown

*** Variables ***
# Setup vars
${UBER_FAIL}        'false'

*** Test Cases ***
Launch Reminder and Notification Settings (Smart Start)
    Launch Reminder and Notification Settings (Smart Start) (Notifications)

Choose How do you want to send booking confirmations? and Who can receive notifications for booking confirmations?
    Choose How do you want to send booking confirmations? and Who can receive notifications for booking confirmations? (Notifications)

Choose How do you want to send reminders to your clients?
    Choose How do you want to send reminders to your clients? (Notifications)

If Email, Select When should an email reminder be sent to clients? 
    If Email, Select When should an email reminder be sent to clients? (Notifications)

If Text, When should client SMS/Text reminders be sent? 
    If Text, When should client SMS/Text reminders be sent? (Notifications)

Enable/Choose How do you want to send reminder to your staff members?
    Enable/Choose How do you want to send reminder to your staff members? (Notifications)

If Email, Select When should an email reminder be sent to Staff Member? 
    If Email, Select When should an email reminder be sent to Staff Member? (Notifications)

If Text, When should staff members SMS/Text reminders be sent? 
    If Text, When should staff members SMS/Text reminders be sent? (Notifications)

Click Next Step
    Click Next Step (Notifications)
