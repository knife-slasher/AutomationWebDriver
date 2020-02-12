*** Settings ***
Library    SeleniumLibrary
Library    String
Library    Collections
Resource  ../pages/home_page.robot
Resource  ../pages/configure_dashboard_page.robot

*** Test Cases ***
Check that Today panel displays, If Today checkbox is set to ON
   Open Browser To Login Page
   Click Email Address
   Enter Email Address
   Click Password
   Enter Password
   Click Login Button
   Click on Configure Dashboard
 # Check Status of the TODAY Checkbox
   ${Check_Today_Status}=    Check the Status of the Checkbox in Configuration Dashboard     ${TODAY_STATUS}
   # If Status of the checkbox is Off, Set to ON
   Run Keyword If    $CHECKBOX_OFF in ${Check_Today_Status}    Today Checkbox Set to ON
   Click on Configure Dashboard
   # If the Status is ON, Check the TODAY panel is present
   Run Keyword If    $CHECKBOX_ON in ${Check_Today_Status}    Check Today Panel is present

Check that Confirm panel displays, If Confirmation checkbox is set to ON
   Click on Configure Dashboard
 # Check the Status of the Confirmation Checkbox
   ${Check_Confirm_Status}=    Check the Status of the Checkbox in Configuration Dashboard    ${CONFIRMATION_STATUS}
   # If the Status of the Confirmation Checkbox is Off, Set to ON
   Run Keyword If    $CHECKBOX_OFF in ${Check_Confirm_Status}   Confirmation Checkbox Set to ON
   Click on Configure Dashboard
   # If the Status is ON, Check the CONFIRM panel is present
   Run Keyword If    $CHECKBOX_ON in ${Check_Confirm_Status}    Check Confirm Panel is present

Check that Next_7_Days panel displays, If Next_7_Days checkbox is set to ON
    Click on Configure Dashboard
 # Check the Status of the Next_7_Days Checkbox
    ${Check_Next_7_Days_Status}=    Check the Status of the Checkbox in Configuration Dashboard    ${NEXT_7_DAYS_STATUS}
    Run Keyword If    $CHECKBOX_OFF in ${Check_Next_7_Days_Status}    Next_7_Days Checkbox Set to ON
    Click on Configure Dashboard
    Run Keyword If    $CHECKBOX_ON in ${Check_Next_7_Days_Status}    Check Next_7_Days Panel is present

Check that Availability panel displays, If Availability checkbox is set to ON
    Click on Configure Dashboard
    ${Check_Availability_Status}=    Check the Status of the Checkbox in Configuration Dashboard    ${AVAILABILITY_STATUS}
    Run Keyword If    $CHECKBOX_OFF in ${Check_Availability_Status}    Availability Checkbox Set to ON
    Click on Configure Dashboard
    Run Keyword If    $CHECKBOX_ON in ${Check_Availability_Status}    Check Availability Panel is present

Check that TO DO panel displays, If TO DO checkbox is set to ON
    Click on Configure Dashboard
    ${Check_TODO_Status}=    Check the Status of the Checkbox in Configuration Dashboard    ${TODO_STATUS}
    Run Keyword If    $CHECKBOX_OFF in ${Check_TODO_Status}   TO DO Checkbox Set to ON
    Click on Configure Dashboard
    Run Keyword If    $CHECKBOX_ON in ${Check_TODO_Status}    Check TO DO Panel is present

Check that Business panel displays, If Business Info checkbox is set to ON
    Click on Configure Dashboard
    ${Check_Business_Info_Status}=    Check the Status of the Checkbox in Configuration Dashboard    ${BUSINESS_INFO_STATUS}
    Run Keyword If    $CHECKBOX_OFF in ${Check_Business_Info_Status}   Business Info Checkbox Set to ON
    Click on Configure Dashboard
    Run Keyword If    $CHECKBOX_ON in ${Check_Business_Info_Status}    Check Business Info Panel is present

Check that Recent Invoices panel displays, If Recent Invoices checkbox is set to ON
    Click on Configure Dashboard
    ${Check_Recent_Invoice_Status}=    Check the Status of the Checkbox in Configuration Dashboard    ${RECENT_INVOICES_STATUS}
    Run Keyword If    $CHECKBOX_OFF in ${Check_Recent_Invoice_Status}    Recent Invoices Checkbox Set to ON
    Click on Configure Dashboard
    Run Keyword If    $CHECKBOX_ON in ${Check_Recent_Invoice_Status}    Check Recent Invoices Panel is present

Check that Monthly Calendar panel displays, If Monthly Calendar checkbox is set to ON
    Click on Configure Dashboard
    ${Check_Monthly_Calendar_Status}=    Check the Status of the Checkbox in Configuration Dashboard    ${MONTHLY_STATUS}
    Run Keyword If    $CHECKBOX_OFF in ${Check_Monthly_Calendar_Status}    Monthly Calendar Checkbox Set to ON
    Click on Configure Dashboard
    Run Keyword If    $CHECKBOX_ON in ${Check_Monthly_Calendar_Status}    Check Monthly Calendar Panel is present

Check that Recent Clients panel displays, If Recent Clients checkbox is set to ON
    Click on Configure Dashboard
    ${Check_Recent_Clients_Status}=    Check the Status of the Checkbox in Configuration Dashboard    ${RECENT_CLIENTS_STATUS}
    Run Keyword If    $CHECKBOX_OFF in ${Check_Recent_Clients_Status}    Recent Client Checkbox Set to ON
    Click on Configure Dashboard
    Run Keyword If    $CHECKBOX_ON in ${Check_Recent_Clients_Status}    Check Recent Client Panel is present

Check that Tomorrow panel displays, If Tomorrow checkbox is set to ON
    Click on Configure Dashboard
    ${Check_Tomorrow_Status}=    Check the Status of the Checkbox in Configuration Dashboard    ${TOMORROW_STATUS}
    Run Keyword If    $CHECKBOX_OFF in ${Check_Tomorrow_Status}    Tomorrow Checkbox Set to ON
    Click on Configure Dashboard
    Run Keyword If    $CHECKBOX_ON in ${Check_Tomorrow_Status}    Check Tomorrow Panel is present

Check that Group Sessions panel displays, If Group Sessions checkbox is set to ON
    Click on Configure Dashboard
    ${Check_Group_Sessions_Status}=    Check the Status of the Checkbox in Configuration Dashboard    ${GR_SESSIONS_STATUS}
    Run Keyword If    $CHECKBOX_OFF in ${Check_Group_Sessions_Status}    Group Sessions Checkbox Set to ON
    Click on Configure Dashboard
    Run Keyword If    $CHECKBOX_ON in ${Check_Group_Sessions_Status}    Check Group Sessions Panel is present

Check that Projects panel displays, If Projects checkbox is set to ON
    Click on Configure Dashboard
    ${Check_Projects_Status}=    Check the Status of the Checkbox in Configuration Dashboard    ${PROJECTS_STATUS}
    Run Keyword If    $CHECKBOX_OFF in ${Check_Projects_Status}    Projects Checkbox Set to ON
    Click on Configure Dashboard
    Run Keyword If    $CHECKBOX_ON in ${Check_Projects_Status}    Check Projects Panel is present

Check that History panel displays, If History checkbox is set to ON
    Click on Configure Dashboard
    ${Check_History_Status}=    Check the Status of the Checkbox in Configuration Dashboard    ${HISTORY_STATUS}
    Run Keyword If    $CHECKBOX_OFF in ${Check_History_Status}    History Check Set to ON
    Click on Configure Dashboard
    Run Keyword If    $CHECKBOX_ON in ${Check_History_Status}    Check History Panel is present

#***************** Checkbox is Set to OFF ****************************
Check that Today panel not displays, If Today checkbox is set to OFF
    Click on Configure Dashboard
 # Check the Status of the TODAY Checkbox
    ${Check_Today_Status_Off}=    Check the Status of the Checkbox in Configuration Dashboard     ${TODAY_STATUS}
    # If the Status is ON, Set to OFF
    Run Keyword If   $CHECKBOX_ON in ${Check_Today_Status_Off}    Today Checkbox Set to OFF
    Click on Configure Dashboard
    # If the Status is OFF, TODAY Panel is not present
    Run Keyword If   $CHECKBOX_OFF in ${Check_Today_Status_Off}    Check Today Panel is not present

Check that Confirm panel not displays, If Confirmations checkbox is set to OFF
    Click on Configure Dashboard
    # Check the Status of the Confirmation Checkbox
    ${Check_Confirm_Status_Off}=    Check the Status of the Checkbox in Configuration Dashboard    ${CONFIRMATION_STATUS}
    Run Keyword If    $CHECKBOX_ON in ${Check_Confirm_Status_Off}    Confirmation Checkbox Set to OFF
    Click on Configure Dashboard
    # If the Status is OFF, Confirm Panel is not present
    Run Keyword If    $CHECKBOX_OFF in ${Check_Confirm_Status_Off}    Check Confirm Panel is not present

Check that Next_7_Days panel not displays, If Next_7_Days checkbox is set to OFF
    Click on Configure Dashboard
    ${Check_Next_7_Days_Status_Off}=    Check the Status of the Checkbox in Configuration Dashboard    ${NEXT_7_DAYS_STATUS}
    Run Keyword If    $CHECKBOX_ON in ${Check_Next_7_Days_Status_Off}    Next_7_Days Checkbox Set to OFF
    Click on Configure Dashboard
    Run Keyword If    $CHECKBOX_OFF in ${Check_Next_7_Days_Status_Off}     Check Next_7_Days Panel is not present

Check that Availability panel not displays, If Availability checkbox is set to OFF
    Click on Configure Dashboard
    ${Check_Availability_Status_Off}=    Check the Status of the Checkbox in Configuration Dashboard    ${AVAILABILITY_STATUS}
    Run Keyword If    $CHECKBOX_ON in ${Check_Availability_Status_Off}    Availability Checkbox Set to OFF
    Click on Configure Dashboard
    Run Keyword If    $CHECKBOX_OFF in ${Check_Availability_Status_Off}   Check Availability Panel is not present

Check that TO_DO panel not displays, If TO_DO checkbox is set to OFF
    Click on Configure Dashboard
    ${Check_TODO_Status_Off}=    Check the Status of the Checkbox in Configuration Dashboard    ${TODO_STATUS}
    Run Keyword If    $CHECKBOX_ON in ${Check_TODO_Status_Off}    TO DO Checkbox Set to OFF
    Click on Configure Dashboard
    Run Keyword If    $CHECKBOX_OFF in ${Check_TODO_Status_Off}   Check TO DO Panel is not present

Check that Business panel not displays, If Business Info checkbox is set to OFF
    Click on Configure Dashboard
    ${Check_Business_Info_Status_Off}=    Check the Status of the Checkbox in Configuration Dashboard    ${BUSINESS_INFO_STATUS}
    Run Keyword If    $CHECKBOX_ON in ${Check_Business_Info_Status_Off}   Business Info Checkbox Set to OFF
    Click on Configure Dashboard
    Run Keyword If    $CHECKBOX_OFF in ${Check_Business_Info_Status_Off}    Check Business Info Panel is not present

Check that Recent Invoices panel not displays, If Recent Invoices checkbox is set to OFF
    Click on Configure Dashboard
    ${Check_Recent_Invoice_Status_Off}=    Check the Status of the Checkbox in Configuration Dashboard    ${RECENT_INVOICES_STATUS}
    Run Keyword If    $CHECKBOX_ON in ${Check_Recent_Invoice_Status_Off}    Recent Invoices Checkbox Set to OFF
    Click on Configure Dashboard
    Run Keyword If    $CHECKBOX_OFF in ${Check_Recent_Invoice_Status_Off}    Check Recent Invoices Panel is not present

Check that Monthly Calendar panel not displays, If Monthly Calendar checkbox is set to OFF
    Click on Configure Dashboard
    ${Check_Monthly_Calendar_Status_Off}=    Check the Status of the Checkbox in Configuration Dashboard    ${MONTHLY_STATUS}
    Run Keyword If    $CHECKBOX_ON in ${Check_Monthly_Calendar_Status_Off}    Monthly Calendar Checkbox Set to OFF
    Click on Configure Dashboard
    Run Keyword If    $CHECKBOX_OFF in ${Check_Monthly_Calendar_Status_Off}    Check Monthly Calendar Panel is not present

Check that Recent Clients panel not displays, If Recent Clients checkbox is set to OFF
    Click on Configure Dashboard
    ${Check_Recent_Clients_Status_Off}=    Check the Status of the Checkbox in Configuration Dashboard    ${RECENT_CLIENTS_STATUS}
    Run Keyword If    $CHECKBOX_ON in ${Check_Recent_Clients_Status_Off}    Recent Client Checkbox Set to OFF
    Click on Configure Dashboard
    Run Keyword If    $CHECKBOX_OFF in ${Check_Recent_Clients_Status_Off}    Check Recent Client Panel is not present

Check that Tomorrow panel not displays, If Tomorrow checkbox is set to OFF
    Click on Configure Dashboard
    ${Check_Tomorrow_Status_Off}=    Check the Status of the Checkbox in Configuration Dashboard    ${TOMORROW_STATUS}
    Run Keyword If    $CHECKBOX_ON in ${Check_Tomorrow_Status_Off}    Tomorrow Checkbox Set to OFF
    Click on Configure Dashboard
    Run Keyword If    $CHECKBOX_OFF in ${Check_Tomorrow_Status_Off}    Check Tomorrow Panel is not present

Check that Group Sessions panel not displays, If Group Sessions checkbox is set to OFF
    Click on Configure Dashboard
    ${Check_Group_Sessions_Status_Off}=    Check the Status of the Checkbox in Configuration Dashboard    ${GR_SESSIONS_STATUS}
    Run Keyword If    $CHECKBOX_ON in ${Check_Group_Sessions_Status_Off}    Group Sessions Checkbox Set to OFF
    Click on Configure Dashboard
    Run Keyword If    $CHECKBOX_OFF in ${Check_Group_Sessions_Status_Off}    Check Group Sessions Panel is not present

Check that Projects panel not displays, If Projects checkbox is set to OFF
    Click on Configure Dashboard
    ${Check_Projects_Status_Off}=    Check the Status of the Checkbox in Configuration Dashboard    ${PROJECTS_STATUS}
    Run Keyword If    $CHECKBOX_ON in ${Check_Projects_Status_Off}    Projects Checkbox Set to OFF
    Click on Configure Dashboard
    Run Keyword If    $CHECKBOX_OFF in ${Check_Projects_Status_Off}    Check Projects Panel is not present

Check that History panel not displays, If History checkbox is set to OFF
    Click on Configure Dashboard
    ${Check_History_Status_Off}=    Check the Status of the Checkbox in Configuration Dashboard    ${HISTORY_STATUS}
    Run Keyword If    $CHECKBOX_ON in ${Check_History_Status_Off}    History Check Set to OFF
    Click on Configure Dashboard
    Run Keyword If    $CHECKBOX_OFF in ${Check_History_Status_Off}    Check History Panel is not present

Check that Restore Default Settings set the Configuration Dashboard back to Default
    Click on Configure Dashboard
    Click on Restore Default Settings button
    Check Today Panel is present
    Check Confirm Panel is present
    Check Recent Client Panel is present
    Check Next_7_Days Panel is present
    Check History Panel is present
    Check Monthly Calendar Panel is present
    Check Availability Panel is not present
    Check TO DO Panel is not present
    Check Business Info Panel is not present
    Check Tomorrow Panel is not present
    Check Group Sessions Panel is not present
    Check Projects Panel is not present
    [Teardown]    Close Browser