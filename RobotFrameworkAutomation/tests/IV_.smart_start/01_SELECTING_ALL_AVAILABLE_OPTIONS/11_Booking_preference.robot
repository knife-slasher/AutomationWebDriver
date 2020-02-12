*** Settings ***
Documentation     Booking_preference.
...
...               This test has a workflow that is created using keywords in
...               the imported resource file.
Resource        ../../../pages/smart_start.robot

Suite Setup         Common User Login        Booking_preference.
Suite Teardown      Close Browser

Test Setup          Generic Selenium Test Setup
Test Teardown       Generic Selenium Test Teardown

*** Variables ***
# Setup vars
${UBER_FAIL}        'false'

*** Test Cases ***
Launch Booking Preferences (Smart Start) page
    Launch Booking Preferences (Smart Start) page (Booking Preference)

Enable/Disable Let Clients cancel?
    Enable/Disable Let Clients cancel? (Booking Preference)

If Enabled, Select Until what time the Clients can Cancel the bookings
    If Enabled, Select Until what time the Clients can Cancel the bookings (Booking Preference)

Enable/Diasble Let Clients reschedule?
    Enable/Diasble Let Clients reschedule? (Booking Preference)

If Enabled, Select Until what time the Clients can Reschedule the bookings
    If Enabled, Select Until what time the Clients can Reschedule the bookings (Booking Preference)

Enable/Disable Allow multiple appointments to be booked in one transaction?
    Enable/Disable Allow multiple appointments to be booked in one transaction? (Booking Preference)

Select What time zone should be display on your booking applications?
    Select What time zone should be display on your booking applications? (Booking Preference)

Please choose a color that best represent your business or website
    Please choose a color that best represent your business or website (Booking Preference)

Enable/Disable What information do you want to collect with your bookings?
    Enable/Disable What information do you want to collect with your bookings? (Booking Preference)

Enable Do you want to sell additional products during the booking process?
    Enable Do you want to sell additional products during the booking process? (Booking Preference)

If Enabled, Click + Add More button
    If Enabled, Click + Add More button (Booking Preference)

Enable/Disable Active to make this Add-On visible on the widgets
    Enable/Disable Active to make this Add-On visible on the widgets (Booking Preference)

Disable/Enable Inventory to know if the supply is limited or not
    Disable/Enable Inventory to know if the supply is limited or not (Booking Preference)

Disable/Enable Tax
    Disable/Enable Tax (Booking Preference)

Populate Add-On name
    Populate Add-On name (Booking Preference)

Populate Price
    Populate Price (Booking Preference)

If Activated/Enabled Inventory, Populate Number Available field
    If Activated/Enabled Inventory, Populate Number Available field (Booking Preference)

If Enabled/Activate Tax, Populate Tax Rate
    If Enabled/Activate Tax, Populate Tax Rate (Booking Preference)

Populate Add-On Title
    Populate Add-On Title (Booking Preference)

Populate Short Description (If applicable)
    Populate Short Description (If applicable) (Booking Preference)

Click Update Add-On Picture
    Click Update Add-On Picture (Booking Preference)

Populate Long Description (If applicable)
    Populate Long Description (If applicable) (Booking Preference)

Disable Show to All Booking Widget (If applicable) and Enable chosen Services
    Disable Show to All Booking Widget (If applicable) and Enable chosen Services (Booking Preference)

Disable Show to All Group Widget (If applicable) and Enable chosen Sessions
    Disable Show to All Group Widget (If applicable) and Enable chosen Sessions (Booking Preference)

Click Save
    Click Save (Booking Preference)

Enable Do you want to collect more information other than the fields you previously selected?
    Enable Do you want to collect more information other than the fields you previously selected? (Booking Preference)

If Enabled, Click + Add More button (CT)
    If Enabled, Click + Add More button (CT) (Booking Preference)

Populate Custom Form Name
    Populate Custom Form Name (Booking Preference)

Populate Description (If applicable)
    Populate Description (If applicable) (Booking Preference)

Enable Hide Title (If applicable)
    Enable Hide Title (If applicable) (Booking Preference)

Enable Hide Description (If applicable)
    Enable Hide Description (If applicable) (Booking Preference)

Enable Hide from Widget (If applicable)
    Enable Hide from Widget (If applicable) (Booking Preference)

Click Add New Question and Choose your desired format/button
    Click Add New Question and Choose your desired format/button (Booking Preference)

Enable Required (If applicable)
    Enable Required (If applicable) (Booking Preference)

Populate Question in the Enter your Question Field
    Populate Question in the Enter your Question Field (Booking Preference)

Populate Choices of your Question and delimited it with comma
    Populate Choices of your Question and delimited it with comma (Booking Preference)

Click Add Sub Question (If applicable)
    Click Add Sub Question (If applicable) (Booking Preference)

Click Save (Booking Preference)
    Click Save (CT) (Booking Preference)

Enable/Disable Auto-Confirm appointments
    Enable/Disable Auto-Confirm appointments (Booking Preference)

Select designate range of time/hours/days on how frequently do you want to offer online bookings
    Select designate range of time/hours/days on how frequently do you want to offer online bookings (Booking Preference)

Disable/Enable Do you want to establish a buffer in which appointments can't be offered?
    Disable/Enable Do you want to establish a buffer in which appointments can't be offered? (Booking Preference)

If Enabled Do you want to establish a buffer in which appt can't be offered, Select range of time/hours/days on disallow bookings inside of this window
    If Enabled Do you want to establish a buffer in which appt can't be offered, Select range of time/hours/days on disallow bookings inside of this window (Booking Preference)

Enable/Disable chosen Member/Resources on would you like to exclude any service providers from online bookings
    Enable/Disable chosen Member/Resources on would you like to exclude any service providers from online bookings (Booking Preference)

Enable/Disable chosen Services on would you like to exclude any of your services from online bookings
    Enable/Disable chosen Services on would you like to exclude any of your services from online bookings (Booking Preference)

Click Next Step
    Click Next Step (Booking Preference)

Is test Pass?
    Add Cookie      zaleniumTestPassed      true
