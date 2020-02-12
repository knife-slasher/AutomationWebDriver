*** Settings ***
Library    SeleniumLibrary
Resource   ../pages/home_page.robot
Resource   ../pages/configure_dashboard_page.robot
Resource   ../pages/calendar_side_menu.robot


*** Test Cases ***
Check User Able to Add Appointment Successfully
    Open Browser To Login Page
    Click Email Address
    Enter Email Address
    Click Password
    Enter Password
    Click Login Button
    Hover on Calendar icon
    Click on Schedule Appointment
    Select Appointment
    Select Client
    Add Client
    ${get_client_name}=    Get Element Attribute    ${CLIENT_NAME}    data-name
    #Log    ${get_client_name}
    Save Appointment
    Page Should Contain    ${get_client_name}
    [Teardown]    Close Browser