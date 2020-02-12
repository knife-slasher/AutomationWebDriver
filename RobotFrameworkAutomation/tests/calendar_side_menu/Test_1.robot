*** Settings ***
Library           SeleniumLibrary
Resource          ../../pages/home_page.robot
Resource          ../../pages/configure_dashboard_page.robot
Resource          ../../pages/calendar_side_menu_page.robot
Resource          ../../pages/gigabook_side_menu_page.robot
Resource          ../../pages/calendar_appointment_page.robot

*** Test Cases ***
Check User Able to Add Appointment Successfully
    Open Browser To Login Page
    Click Email Address
    Enter Email Address
    Click Password
    Enter Password
    Click Login Button
    Mouse Over Calendar
    Select Schedule Appointment

Check that correct label displays for Client
    Correct label displays for Client

Check that correct label displays for Service
    Correct label displays for Service

Check that correct label displays for Date
    Correct label displays for Date

Check that correct label displays for Series
    Correct label displays for Series

Check that correct label displays for Prep Time
    Correct label displays for Prep Time

Check that correct label displays for Duration
    Correct label displays for Duration

Check that correct label displays for Finish Time
    Correct label displays for Finish Time

Check that correct label displays for Location
    Correct label displays for Location

Check that correct label displays for Staff Members
    Correct label displays for Staff Members

Check that correct label displays for Notes For Staff Members
    Correct label displays for Notes For Staff Members

Check that correct label displays for Notes For Client
    Correct label displays for Notes For Client

Check that correct label displays for Notifications
    Correct label displays for Notifications

Check that correct label displays for Reminders
    Correct label displays for Reminders
    [Teardown]    Close Browser
