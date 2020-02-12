*** Settings ***
Library    SeleniumLibrary


*** Variables ***
#*****  List of the elements present on this page *********************************
#********** CONFIGURE DASHBOARD *****************
${CONFIGURE_DASHBOARD}    css=.flapLabel
#********** TODAY *******************************
${TODAY_STATUS}    css=.bootstrap-switch-id-cb_today
${TODAY_SET_ON}    css=.bootstrap-switch-id-cb_today .bootstrap-switch-handle-off
${TODAY_SET_OFF}    css=.bootstrap-switch-id-cb_today .bootstrap-switch-handle-on
#********** CONFIRMATIONS ***********************
${CONFIRMATION_STATUS}    css=.bootstrap-switch-id-cb_confirm
${CONFIRMATION_SET_ON}    css=.bootstrap-switch-id-cb_confirm .bootstrap-switch-handle-off
${CONFIRMATION_SET_OFF}    css=.bootstrap-switch-id-cb_confirm .bootstrap-switch-handle-on
#********** NEXT_7_DAYS *************************
${NEXT_7_DAYS_STATUS}    css=.bootstrap-switch-id-cb_thisweek
${NEXT_7_DAYS_SET_ON}    css=.bootstrap-switch-id-cb_thisweek .bootstrap-switch-handle-off
${NEXT_7_DAYS_SET_OFF}    css=.bootstrap-switch-id-cb_thisweek .bootstrap-switch-handle-on
#********** AVAILABILITY ************************
${AVAILABILITY_STATUS}    css=.bootstrap-switch-id-cb_providers
${AVAILABILITY_SET_ON}    css=.bootstrap-switch-id-cb_providers .bootstrap-switch-handle-off
${AVAILABILITY_SET_OFF}    css=.bootstrap-switch-id-cb_providers .bootstrap-switch-handle-on
#********** TO DO *******************************
${TODO_STATUS}    css=.bootstrap-switch-id-cb_todo
${TODO_SET_ON}    css=.bootstrap-switch-id-cb_todo .bootstrap-switch-handle-off
${TODO_SET_OFF}    css=.bootstrap-switch-id-cb_todo .bootstrap-switch-handle-on
#********** BUSINESS INFO ***********************
${BUSINESS_INFO_STATUS}    css=.bootstrap-switch-id-cb_business
${BUSINESS_INFO_SET_ON}    css=.bootstrap-switch-id-cb_business .bootstrap-switch-handle-off
${BUSINESS_INFO_SET_OFF}    css=.bootstrap-switch-id-cb_business .bootstrap-switch-handle-on
#********** RECENT INVOICES *********************
${RECENT_INVOICES_STATUS}    css=.bootstrap-switch-id-cb_recent_invoices
${RECENT_INVOICES_SET_ON}    css=.bootstrap-switch-id-cb_recent_invoices .bootstrap-switch-handle-off
${RECENT_INVOICES_SET_OFF}    css=.bootstrap-switch-id-cb_recent_invoices .bootstrap-switch-handle-on
#********** MONTHLY CALENDAR ********************
${MONTHLY_STATUS}    css=.bootstrap-switch-id-cb_calendar
${MONTHLY_SET_ON}    css=.bootstrap-switch-id-cb_calendar .bootstrap-switch-handle-off
${MONTHLY_SET_OFF}    css=.bootstrap-switch-id-cb_calendar .bootstrap-switch-handle-on
#********** RECENT CLIENTS **********************
${RECENT_CLIENTS_STATUS}    css=.bootstrap-switch-id-cb_recent_clients
${RECENT_CLIENTS_SET_ON}    css=.bootstrap-switch-id-cb_recent_clients .bootstrap-switch-handle-off
${RECENT_CLIENTS_SET_OFF}    css=.bootstrap-switch-id-cb_recent_clients .bootstrap-switch-handle-on
#********** TOMORROW ****************************
${TOMORROW_STATUS}    css=.bootstrap-switch-id-cb_tomorrow
${TOMORROW_SET_ON}    css=.bootstrap-switch-id-cb_tomorrow .bootstrap-switch-handle-off
${TOMORROW_SET_OFF}    css=.bootstrap-switch-id-cb_tomorrow .bootstrap-switch-handle-on
#********** GROUP SESSIONS **********************
${GR_SESSIONS_STATUS}    css=.bootstrap-switch-id-cb_group_meetings
${GR_SESSIONS_SET_ON}    css=.bootstrap-switch-id-cb_group_meetings .bootstrap-switch-handle-off
${GR_SESSIONS_SET_OFF}    css=.bootstrap-switch-id-cb_group_meetings .bootstrap-switch-handle-on
#********** PROJECTS ****************************
${PROJECTS_STATUS}    css=.bootstrap-switch-id-cb_projects
${PROJECTS_SET_ON}    css=.bootstrap-switch-id-cb_projects .bootstrap-switch-handle-off
${PROJECTS_SET_OFF}    css=.bootstrap-switch-id-cb_projects .bootstrap-switch-handle-on
#********** HISTORY ******************************
${HISTORY_STATUS}    css=.bootstrap-switch-id-cb_history
${HISTORY_SET_ON}    css=.bootstrap-switch-id-cb_history .bootstrap-switch-handle-off
${HISTORY_SET_OFF}    css=.bootstrap-switch-id-cb_history .bootstrap-switch-handle-on

#********** RESTORE DEFAULT SETTINGS *************
${RESTORE_DEFAULTS_SETTINGS}    id=reset-panels

#************ Status of the check box  *******************************************************
${CHECKBOX_ON}    bootstrap-switch-on
${CHECKBOX_OFF}    bootstrap-switch-off

#************ DASHBOARD PANEL ****************************************************************
${TODAY_PANEL}   css=div[data-panel-type="today"]
${CONFIRM_PANEL}    css=div[data-panel-type="confirm"]
${NEXT_7_DAYS_PANEL}    css=div[data-panel-type="thisweek"]
${AVAILABILITY_PANEL}    css=div[data-panel-type="providers"]
${TODO_PANEL}    css=div[data-panel-type="todo"]
${BUSINESS_PANEL}    css=div[data-panel-type="business"]
${RECENT_INVOICES_PANEL}    css=div[data-panel-type="recent_invoices"]
${MONTHLY_CALENDAR_PANEL}    css=div[data-panel-type="calendar"]
${RECENT_CLIENTS_PANEL}    css=div[data-panel-type="recent_clients"]
${TOMORROW_PANEL}    css=div[data-panel-type="tomorrow"]
${GROUP_SESSION_PANEL}    css=div[data-panel-type="group_meetings"]
${PROJECTS_PANEL}    css=div[data-panel-type="projects"]
${HISTORY_PANEL}    css=div[data-panel-type="history"]

*** Keywords ***
Click on Configure Dashboard
    Click Element    ${CONFIGURE_DASHBOARD}

Today Checkbox Set to ON
    Click Element    ${TODAY_SET_ON}

Today Checkbox Set to OFF
    Click Element    ${TODAY_SET_OFF}
Check Today Panel is present
    Element Should Be Visible    ${TODAY_PANEL}

Check Today Panel is not present
    Element Should Not Be Visible    ${TODAY_PANEL}

Confirmation Checkbox Set to ON
    Click Element    ${CONFIRMATION_SET_ON}

Confirmation Checkbox Set to OFF
    Click Element    ${CONFIRMATION_SET_OFF}

Check Confirm Panel is present
    Element Should Be Visible    ${CONFIRM_PANEL}

Check Confirm Panel is not present
    Element Should Not Be Visible    ${CONFIRM_PANEL}

Next_7_Days Checkbox Set to ON
    Click Element    ${NEXT_7_DAYS_SET_ON}

Next_7_Days Checkbox Set to OFF
    Click Element    ${NEXT_7_DAYS_SET_OFF}

Check Next_7_Days Panel is present
    Element Should Be Visible    ${NEXT_7_DAYS_PANEL}

Check Next_7_Days Panel is not present
    Element Should Not Be Visible    ${NEXT_7_DAYS_PANEL}

Availability Checkbox Set to ON
    Click Element    ${AVAILABILITY_SET_ON}

Availability Checkbox Set to OFF
    Click Element    ${AVAILABILITY_SET_OFF}

Check Availability Panel is present
    Element Should Be Visible    ${AVAILABILITY_PANEL}

Check Availability Panel is not present
    Element Should Not Be Visible    ${AVAILABILITY_PANEL}

TO DO Checkbox Set to ON
    Click Element    ${TODO_SET_ON}

TO DO Checkbox Set to OFF
    Click Element    ${TODO_SET_OFF}

Check TO DO Panel is present
    Element Should Be Visible    ${TODO_PANEL}

Check TO DO Panel is not present
    Element Should Not Be Visible    ${TODO_PANEL}

Business Info Checkbox Set to ON
    Click Element    ${BUSINESS_INFO_SET_ON}

Business Info Checkbox Set to OFF
    Click Element    ${BUSINESS_INFO_SET_OFF}

Check Business Info Panel is present
    Element Should Be Visible    ${BUSINESS_PANEL}

Check Business Info Panel is not present
    Element Should Not Be Visible    ${BUSINESS_PANEL}

Recent Invoices Checkbox Set to ON
    Click Element    ${RECENT_INVOICES_SET_ON}

Recent Invoices Checkbox Set to OFF
    Click Element    ${RECENT_INVOICES_SET_OFF}

Check Recent Invoices Panel is present
    Element Should Be Visible    ${RECENT_INVOICES_PANEL}

Check Recent Invoices Panel is not present
    Element Should Not Be Visible    ${RECENT_INVOICES_PANEL}

Monthly Calendar Checkbox Set to ON
    Click Element    ${MONTHLY_SET_ON}

Monthly Calendar Checkbox Set to OFF
    Click Element    ${MONTHLY_SET_OFF}

Check Monthly Calendar Panel is present
    Element Should Be Visible    ${MONTHLY_CALENDAR_PANEL}

Check Monthly Calendar Panel is not present
    Element Should Not Be Visible    ${MONTHLY_CALENDAR_PANEL}

Recent Client Checkbox Set to ON
    Click Element    ${RECENT_CLIENTS_SET_ON}

Recent Client Checkbox Set to OFF
    Click Element   ${RECENT_CLIENTS_SET_OFF}

Check Recent Client Panel is present
    Element Should Be Visible    ${RECENT_CLIENTS_PANEL}

Check Recent Client Panel is not present
    Element Should Not Be Visible    ${RECENT_CLIENTS_PANEL}

Tomorrow Checkbox Set to ON
    Click Element    ${TOMORROW_SET_ON}

Tomorrow Checkbox Set to OFF
    Click Element   ${TOMORROW_SET_OFF}

Check Tomorrow Panel is present
    Element Should Be Visible    ${TOMORROW_PANEL}

Check Tomorrow Panel is not present
    Element Should Not Be Visible    ${TOMORROW_PANEL}

Group Sessions Checkbox Set to ON
    Click Element    ${GR_SESSIONS_SET_ON}

Group Sessions Checkbox Set to OFF
    Click Element    ${GR_SESSIONS_SET_OFF}

Check Group Sessions Panel is present
    Element Should Be Visible    ${GROUP_SESSION_PANEL}

Check Group Sessions Panel is not present
    Element Should Not Be Visible    ${GROUP_SESSION_PANEL}

Projects Checkbox Set to ON
    Click Element    ${PROJECTS_SET_ON}

Projects Checkbox Set to Off
    Click Element    ${PROJECTS_SET_OFF}

Check Projects Panel is present
    Element Should Be Visible    ${PROJECTS_PANEL}

Check Projects Panel is not present
    Element Should Not Be Visible    ${AVAILABILITY_PANEL}

History Check Set to ON
    Click Element    ${HISTORY_SET_ON}

History Check Set to OFF
    Click Element    ${HISTORY_SET_OFF}

Check History Panel is present
    Element Should Be Visible    ${HISTORY_PANEL}

Check History Panel is not present
    Element Should Not Be Visible    ${HISTORY_PANEL}

Click on Restore Default Settings button
    Click Element    ${RESTORE_DEFAULTS_SETTINGS}

Check the Status of the Checkbox in Configuration Dashboard
    [Arguments]    ${CONFIGURATION_DASHBOARD_CHECKBOX}
    ${get_checkbox_attribute}=    Get Element Attribute    ${CONFIGURATION_DASHBOARD_CHECKBOX}    class
    @{split_the_attribute}=    Split String    ${get_checkbox_attribute}    ${SPACE}
    #${STATUS}=    Get From List    ${split_the_attribute}    2
    [Return]    ${split_the_attribute}

