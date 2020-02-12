*** Settings ***
Documentation    A resource file with reusable keywords and variables for appointment page.
...
...              The system specific keyworrds created here from our own domain
...              specific language. They utilize keywords provided by the imported SeleniumLibrary.

Library    SeleniumLibrary

*** Variables ***
#******** List of elements present on the Appointment page ***************
${APPT_BUTTON}    id=AppEveButtsID
${EVENT_BUTTON}    id=btn_event
${GROUP_SESSION_BUTTON}    id=btn_group
${INVOICE_BUTTON}    xpath=//span[text()="Invoice"]
${SAVE_BUTTON}    xpath=//span[text()="Save"]
${CLOSE_BUTTON}    css=.glyphicon-remove

${CLIENT_NAME}    css=.tagInputField
${ADD_CLIENT}    id=AddClientID
${SELECT_CLIENT}    xpath=//a[text()="General Client"]
${SERVICE}    name=services
${DATE_CALENDAR}    css=.glyphicon-calendar
${DATE_TIME}    css=.glyphicon-time
${SERIES_CHECKBOX}    css=.bootstrap-switch-id-AppOpt2
${BUSINESS_LOCATION}    css=.form-control

${ERROR_NO_SERVICE}    css=.alert-danger
${MESSAGE_NO_SERVICE}    Please choose a Service.

${LABEL_CLIENT}    xpath=//label[@for='clientnames']
${LABEL_SERVICE}    xpath=//label[@for='services_id']
${LABEL_DATE}    xpath=//label[@for='dpStartDT']
${LABEL_SERIES}    xpath=//label[@id='ApptOptLabel']
${LABEL_PREPTIME}    xpath=//label[@for='PrepTime']
${LABEL_DURATION}    xpath=//label[@for='Duration']
${LABEL_FINISH_TIME}    xpath=//label[@for='FinishTime']
${LABEL_BUSINESS_LOCATION}    xpath=//label[@for='business_id']
${LABEL_STAFF_MEMBERS}    xpath=//label[@for='provider_id']
${LABEL_NOTES_STAFF}    xpath=//label[@for='notesInternal_id']
${LABEL_NOTES_CLIENT}    xpath=//label[@for='notes_id']
${LABEL_NOTIFICATIONS}    xpath=//div[contains(@class, 'col-lg-12')]/label[@for='notificationsOnOff']
${LABEL_REMINDERS}    xpath=//div[contains(@class, 'col-lg-12')]/label[@for='remindersOnOff']



*** Keywords ***
Select Appointment
    Click Element    ${APPT_BUTTON}

Click on Client
    Click Element    ${CLIENT_NAME}

Select Client
    Click Element    ${SELECT_CLIENT}

Add Client
    Click Element    ${ADD_CLIENT}

Click on Save button
    Click Element    ${SAVE_BUTTON}

Correct label displays for Client
    Element Text Should Be    ${LABEL_CLIENT}    Clients

Correct label displays for Service
    Element Text Should Be    ${LABEL_SERVICE}    Service

Correct label displays for Date
    Element Text Should Be    ${LABEL_DATE}    Date

Correct label displays for Series
    Element Text Should Be    ${LABEL_SERIES}    Series

Correct label displays for Prep Time
    Element Text Should Be    ${LABEL_PREPTIME}    Prep Time

Correct label displays for Duration
    Element Text Should Be    ${LABEL_DURATION}    Duration

Correct label displays for Finish Time
    Element Text Should Be    ${LABEL_FINISH_TIME}    Finish Time

Correct label displays for Location
    Element Text Should Be    ${LABEL_BUSINESS_LOCATION}    Location

Correct label displays for Staff Members
    Element Text Should Be    ${LABEL_STAFF_MEMBERS}    Staff Members

Correct label displays for Notes For Staff Members
    Element Text Should Be    ${LABEL_NOTES_STAFF}    Notes For Staff Member

Correct label displays for Notes For Client
    Element Text Should Be    ${LABEL_NOTES_CLIENT}    Notes For Client

Correct label displays for Notifications
    Element Text Should Be    ${LABEL_NOTIFICATIONS}    Notifications

Correct label displays for Reminders
    Element Text Should Be    ${LABEL_REMINDERS}    Reminders