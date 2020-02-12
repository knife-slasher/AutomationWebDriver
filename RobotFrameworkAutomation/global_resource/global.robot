*** Settings ***
Documentation     A resource file with reusable keywords and variables for home page.
...
...               The system specific keywords created here form our own
...               domain specific language. They utilize keywords provided
...               by the imported SeleniumLibrary.
Library           SeleniumLibrary
Library           Collections

*** Variables ***
#GLobal config
${TEST_SPEED}     300ms
${WAIT_TIMEOUT}    60s
${GLOBAL_TEST_EMAIL}    0
${GLOBAL_TEST_EMAIL_USE}    0
# CLI Variables defaults
${CLI_BROWSER}    safari
${CLI_OS}         MAC
${CLI_GRID_BASE_URL}    192.168.0.117
${CLI_MAIN_URL}    dev16.gigabook.com
${CLI_TEST_MODE}    local
${CLI_BUILD}      ""
# CBT Config
${CBT_USER}       robertr@gigabook.com
${ACCESS_KEY}     ubefc637e9f5936e
${VIDEO}          true
${REMOTE_URL}     http://${CBT_USER}:${ACCESS_KEY}@hub.crossbrowsertesting.com:80/wd/hub
${WELCOME_GGB_TEXT}    Welcome To GigaBook!
# Grid Config
${GRID_BASE_PROTOCOL}    http://
${GRID_BASE_URL}    ${CLI_GRID_BASE_URL}
${GRID_PORT}      4444
${GRID_URL}       ${GRID_BASE_PROTOCOL}${GRID_BASE_URL}:${GRID_PORT}/wd/hub
# Login Variables
${LOG_IN_LINK}    xpath=//*[@id="main-nav"]/li[6]/a
${LOG_IN_BUTTON}    name=login
${LOG_IN_MODAL}    id=ModalLogin
${LOG_IN_EMAIL_FIELD}    name=EmailAdd
${LOG_IN_PASS_FIELD}    name=Password
${LOG_IN_SIGN_UP_NOW}    className=btn btn-primary
# Error Elements
${OOPS_ELEMENT}    xpath=//*[@id="loginfrm"]/div/div[1]/div[2]/div/div/div/div/div/h1
# Dashboard
${SETTINGS_LINK}    xpath=//*[@id="nav"]/li[7]/a/i
${SETTINGS_LINK_SERVICE}    xpath=//*[@id="nav"]/li[7]/ul/li[4]/a/span
${DASHBOARD_LOGO}    xpath=//*[@id="nav"]/li[1]/a/img
# Service Page
${CREATE_SERVICE_BUTTON}    xpath=//*[@id="search-service"]/a
#================= URL =================
# Base URL
${URL_MAIN}       ${CLI_MAIN_URL}
# ${URL_MAIN}     gigabook.localhost
# ${URL_MAIN}     gigabook-mvc.local
# Protocol
${URL_PROTOCOL}    https://
# Test URL's
# Root
${MAIN_URL}       ${URL_PROTOCOL}${URL_MAIN}/
# Login
${LOGIN_URL}      ${URL_PROTOCOL}${URL_MAIN}/access
# Dashboard
${DASHBOARD_URL}    ${URL_PROTOCOL}${URL_MAIN}/dashboard
# Service
${SERVICE_URL}    ${URL_PROTOCOL}${URL_MAIN}/services
# Signup
${SIGNUP_URL}     ${URL_PROTOCOL}${URL_MAIN}/signup#panel_step_begin
# ${SIGNUP_URL}    ${URL_PROTOCOL}${URL_MAIN}/signup
# Welcome
${WELCOME_URL}    ${URL_PROTOCOL}${URL_MAIN}/welcome
# Smart Start
${SMARTSTART_URL}    ${URL_PROTOCOL}${URL_MAIN}/smartstart
# Booking Widget
${BOOKING_WIDGET_URL}    ${URL_PROTOCOL}${URL_MAIN}/booking-widget-setup

*** Keywords ***
Test Error
    [Arguments]    ${MSG}
    Fail    ${MSG}

Navigate to Site.
    [Arguments]    ${MODE}    ${NAME}
    # Log    ${TEST_WEW}
    Set Suite Variable    &{ARGS}    test_mode=${MODE}    main_url=${MAIN_URL}    name=${NAME}
    Open Test Browser    ${ARGS}
    # Open Cbt Test    BROWSER=Safari    OS=OS X    VERSION=11.0    RESOLUTION=1366x768    TEST_NAME=${TEST_NAME}
    Maximize Browser Window
    Comment    User redirected to https://gigabook.com

Click 'Login' hyperlink.
    Click Element    ${LOG_IN_LINK}
    Wait Until Element Is Visible    ${LOG_IN_MODAL}
    Comment    Login window is displayed.

Click on 'Sign Up Now' button.
    Click Element    ${LOG_IN_SIGN_UP_NOW}
    Comment    Sign Up form is displayed.

Enter valid email address.
    # Run Keyword If    ${GLOBAL_TEST_EMAIL} != false    Set Variable    ${VALID_USER}    ${GLOBAL_TEST_EMAIL}
    Run Keyword If    ${GLOBAL_TEST_EMAIL_USE} == 0    Input Text    ${LOG_IN_EMAIL_FIELD}    ${VALID_USER}
    Run Keyword If    ${GLOBAL_TEST_EMAIL_USE} == 1    Input Text    ${LOG_IN_EMAIL_FIELD}    ${GLOBAL_TEST_EMAIL}
    Comment    System accepts valid email address.

Enter invalid email address.
    ${RANDOM_1}    Random Number
    Input Text    ${LOG_IN_EMAIL_FIELD}    invalid_email${RANDOM_1}@koi.com
    Comment    System accepts valid email address.

Enter valid password.
    Run Keyword If    ${GLOBAL_TEST_EMAIL_USE} == 0    Input Text    ${LOG_IN_PASS_FIELD}    ${VALID_PASS}
    Run Keyword If    ${GLOBAL_TEST_EMAIL_USE} == 1    Input Text    ${LOG_IN_PASS_FIELD}    thisissomepass1234
    Comment    System accepts valid password.

Enter invalid password.
    Input Text    ${LOG_IN_PASS_FIELD}    invalid_password
    Comment    System will not accepts invalid email address.

Enter custom email address.
    [Arguments]    ${USER}
    Input Text    ${LOG_IN_EMAIL_FIELD}    ${USER}

Enter custom password.
    [Arguments]    ${PASSWORD}
    Input Text    ${LOG_IN_PASS_FIELD}    ${PASSWORD}
    Comment    System will not accepts invalid email address.

Click on Login button.
    Click Element    ${LOG_IN_BUTTON}
    Comment    Verify that correct error message is displayed for invalid email address.
    # Common Test-Case keywords

Common User Login
    [Arguments]    ${NAME}
    Navigate to Site.    ${CLI_TEST_MODE}    ${NAME}
    Click 'Login' hyperlink.
    Sleep    1000ms
    Enter valid email address.
    Sleep    1000ms
    Enter valid password.
    Click on Login button.
    Wait Until Element Is Enabled    ${DASHBOARD_LOGO}

Common Browser Navigation
    [Arguments]    ${NAME}
    Navigate to Site.    ${CLI_TEST_MODE}    ${NAME}

Custom User Login
    [Arguments]    ${NAME}    ${EMAIL}    ${PASSWORD}
    Navigate to Site.    ${CLI_TEST_MODE}    ${NAME}
    Click 'Login' hyperlink.
    Sleep    1000ms
    Enter custom email address.    ${EMAIL}
    Sleep    1000ms
    Enter custom password.    ${PASSWORD}
    Click on Login button.
    Wait Until Element Is Enabled    ${DASHBOARD_LOGO}
    #*************** Setups ***************

Generic Selenium Test Setup
    # Check if UBER_FAIL is true then it will fail the whole suite
    Add Cookie    zaleniumTestPassed    false
    Run Keyword If    ${UBER_FAIL} == 'true'    Fail
    Set Selenium Speed    ${TEST_SPEED}
    #*************** Setups ***************
    #*************** Teardowns ***************

Generic Selenium Test Teardown
    Run Keyword If Test Failed    Generic Selenium Fail Teardown

Generic Selenium Fail Teardown
    # Tag UBER_FAIL as true
    Set Suite Variable    ${UBER_FAIL}    'true'
    #*************** Teardowns ***************
